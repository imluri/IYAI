-- tools/Explorer.lua  |  Instance explorer tools
-- Returns function(Tools) — call it to register tools.

return function(Tools, getProperties, getMethods)

	local Players = game:GetService("Players")

	local function resolvePath(path)
		if not path or path == "" or path == "game" then return game end
		local inst = game
		for part in path:gmatch("[^%.]+") do
			if part == "game" then
				-- skip
			elseif part == "LocalPlayer" then
				local lp = Players.LocalPlayer
				if not lp then return nil, "LocalPlayer not available" end
				inst = lp
			elseif part == "Character" and inst:IsA("Player") then
				local char = inst.Character
				if not char then return nil, "Character not loaded" end
				inst = char
			else
				local child = inst:FindFirstChild(part)
				if not child then return nil, "Not found: " .. part end
				inst = child
			end
		end
		return inst
	end

	local function walkTree(inst, depth, maxPerLevel)
		depth       = math.min(depth or 2, 5)
		maxPerLevel = maxPerLevel or 30
		local function walk(i, d)
			local line = i.ClassName .. " " .. i.Name
			if d <= 0 then return line end
			local ch = i:GetChildren()
			if #ch == 0 then return line end
			local parts = { line }
			local cap = math.min(#ch, maxPerLevel)
			local ind = string.rep("  ", depth - d + 1)
			for n = 1, cap do
				parts[#parts + 1] = ind .. walk(ch[n], d - 1)
			end
			if #ch > maxPerLevel then
				parts[#parts + 1] = ind .. "...+" .. (#ch - maxPerLevel) .. " more"
			end
			return table.concat(parts, "\n")
		end
		return walk(inst, depth)
	end

	-- tree: walk instance tree from a path
	Tools.register({
		definition = {
			type = "function",
			["function"] = {
				name        = "tree",
				description = "Get the instance tree from a path. Use to explore game structure.",
				parameters  = {
					type       = "object",
					properties = {
						path  = { type = "string",  description = "Instance path e.g. 'game', 'Workspace', 'game.Workspace.Map'" },
						depth = { type = "integer", description = "Recursion depth 1-4. Default 2." },
					},
					required = { "path" }
				}
			}
		},
		handler = function(args)
			local inst, err = resolvePath(args.path)
			if not inst then return "Error: " .. tostring(err) end
			return walkTree(inst, math.min(tonumber(args.depth) or 2, 4), 25)
		end
	})

	-- find_class: find all instances of a ClassName
	Tools.register({
		definition = {
			type = "function",
			["function"] = {
				name        = "find_class",
				description = "Find all instances of a ClassName under a root path. To find hats/accessories for a player, use class='Accessory' and root='game.Workspace.PlayerName'.",
				parameters  = {
					type       = "object",
					properties = {
						class = { type = "string",  description = "ClassName e.g. 'LocalScript', 'RemoteEvent', 'Part'" },
						root  = { type = "string",  description = "Root path. Default 'game'" },
						limit = { type = "integer", description = "Max results. Default 40." },
					},
					required = { "class" }
				}
			}
		},
		handler = function(args)
			local root = resolvePath(args.root or "game")
			if not root then return "None found." end
			local limit = math.min(tonumber(args.limit) or 40, 100)
			local found = {}
			local function walk(inst)
				if #found >= limit then return end
				if inst.ClassName == args.class then
					table.insert(found, inst:GetFullName())
				end
				for _, ch in ipairs(inst:GetChildren()) do walk(ch) end
			end
			pcall(walk, root)
			return #found > 0 and table.concat(found, "\n") or "None found."
		end
	})

	-- find_name: find instances by name
	Tools.register({
		definition = {
			type = "function",
			["function"] = {
				name        = "find_name",
				description = "Find instances by Name under a root path.",
				parameters  = {
					type       = "object",
					properties = {
						name  = { type = "string",  description = "Name to search (case-sensitive)" },
						root  = { type = "string",  description = "Root path. Default 'game'" },
						limit = { type = "integer", description = "Max results. Default 20." },
					},
					required = { "name" }
				}
			}
		},
		handler = function(args)
			local root, err = resolvePath(args.root or "game")
			if not root then return "Error: " .. tostring(err) end
			local limit = math.min(tonumber(args.limit) or 20, 50)
			local found = {}
			local function walk(inst)
				if #found >= limit then return end
				if inst.Name == args.name then
					table.insert(found, inst:GetFullName() .. " (" .. inst.ClassName .. ")")
				end
				for _, ch in ipairs(inst:GetChildren()) do walk(ch) end
			end
			pcall(walk, root)
			return #found > 0 and table.concat(found, "\n") or "None found."
		end
	})

	-- props: read properties of a specific instance
	Tools.register({
		definition = {
			type = "function",
			["function"] = {
				name        = "props",
				description = "Get readable properties of a specific instance.",
				parameters  = {
					type       = "object",
					properties = {
						path = { type = "string", description = "Full instance path" },
					},
					required = { "path" }
				}
			}
		},
		handler = function(args)
			local inst, err = resolvePath(args.path)
			if not inst then return "Error: " .. tostring(err) end
			local lines = { inst.ClassName .. ' "' .. inst.Name .. '" @ ' .. inst:GetFullName() }
			if inst:IsA("BasePart") then
				lines[#lines+1] = "  Position     = " .. tostring(inst.Position)
				lines[#lines+1] = "  Size         = " .. tostring(inst.Size)
				lines[#lines+1] = "  Anchored     = " .. tostring(inst.Anchored)
				lines[#lines+1] = "  CanCollide   = " .. tostring(inst.CanCollide)
				lines[#lines+1] = "  Transparency = " .. tostring(inst.Transparency)
				lines[#lines+1] = "  Material     = " .. tostring(inst.Material)
			end
			if inst:IsA("Model") then
				local pp = inst.PrimaryPart
				lines[#lines+1] = "  PrimaryPart  = " .. (pp and pp.Name or "nil")
			end
			if inst:IsA("LuaSourceContainer") then
				local s = ""
				pcall(function() s = inst.Source end)
				lines[#lines+1] = "  Source: " .. #s .. " chars"
			end
			if inst.ClassName:find("Value$") then
				pcall(function() lines[#lines+1] = "  Value = " .. tostring(inst.Value) end)
			end
			for _, child in ipairs(inst:GetChildren()) do
				lines[#lines+1] = "  " .. child.Name .. " (" .. child.ClassName .. ")"
			end
			return table.concat(lines, "\n")
		end
	})-- get_value: read any single property from an instance via pcall
	Tools.register({
		definition = {
			type = "function",
			["function"] = {
				name        = "get_value",
				description = "Read any single property from an instance by name.",
				parameters  = {
					type       = "object",
					properties = {
						path     = { type = "string", description = "Instance path e.g. 'game.Players.LocalPlayer.Character.Humanoid'" },
						property = { type = "string", description = "Property name e.g. 'WalkSpeed', 'Health', 'Position'" },
					},
					required = { "path", "property" }
				}
			}
		},
		handler = function(args)
			local inst, err = resolvePath(args.path)
			if not inst then return "Error: " .. tostring(err) end
			local ok, val = pcall(function() return inst[args.property] end)
			if not ok then return "Error: property '" .. args.property .. "' not readable on " .. inst.ClassName end
			return args.property .. " = " .. tostring(val)
		end
	})

	-- set_property: write a property on an instance
	local function coerceValue(cur, valStr)
		local t = typeof(cur)
		if t == "number" then
			local n = tonumber(valStr)
			if not n then return nil, "expected a number, got '" .. valStr .. "'" end
			return n
		elseif t == "boolean" then
			local v = valStr:lower()
			return (v == "true" or v == "1" or v == "yes")
		elseif t == "string" then
			return valStr
		elseif t == "Vector3" then
			local x, y, z = valStr:match("^([%-%.%d]+),%s*([%-%.%d]+),%s*([%-%.%d]+)$")
			if not x then return nil, "expected 'x,y,z' for Vector3, got '" .. valStr .. "'" end
			return Vector3.new(tonumber(x), tonumber(y), tonumber(z))
		elseif t == "Color3" then
			local hex = valStr:match("^#?(%x%x%x%x%x%x)$")
			if hex then
				return Color3.fromRGB(
					tonumber(hex:sub(1,2), 16),
					tonumber(hex:sub(3,4), 16),
					tonumber(hex:sub(5,6), 16)
				)
			end
			local r, g, b = valStr:match("^([%.%d]+),%s*([%.%d]+),%s*([%.%d]+)$")
			if not r then return nil, "expected '#rrggbb' or 'r,g,b' for Color3, got '" .. valStr .. "'" end
			r, g, b = tonumber(r), tonumber(g), tonumber(b)
			return (r > 1 or g > 1 or b > 1) and Color3.fromRGB(r, g, b) or Color3.new(r, g, b)
		elseif t == "EnumItem" then
			local etOk, enumType = pcall(function() return cur.EnumType end)
			if not etOk or not enumType then return nil, "could not resolve Enum type" end
			local enumStr = tostring(enumType)
			local enumName = enumStr:match("Enum%.(.+)$") or enumStr
			local ok, enumVal = pcall(function() return Enum[enumName][valStr] end)
			if not ok or not enumVal then return nil, "'" .. valStr .. "' is not a valid " .. enumStr .. " value" end
			return enumVal
		elseif t == "UDim2" then
			local sx, ox, sy, oy = valStr:match("^([%.%d]+),%s*([%-%.%d]+),%s*([%.%d]+),%s*([%-%.%d]+)$")
			if not sx then return nil, "expected 'scaleX,offsetX,scaleY,offsetY' for UDim2, got '" .. valStr .. "'" end
			return UDim2.new(tonumber(sx), tonumber(ox), tonumber(sy), tonumber(oy))
		elseif t == "CFrame" then
			local x, y, z = valStr:match("^([%-%.%d]+),%s*([%-%.%d]+),%s*([%-%.%d]+)$")
			if x then return CFrame.new(tonumber(x), tonumber(y), tonumber(z)) end
			local comps = {}
			for n in valStr:gmatch("[%-%.%d]+") do comps[#comps+1] = tonumber(n) end
			if #comps == 12 then return CFrame.new(table.unpack(comps)) end
			return nil, "expected 'x,y,z' or full 12-component CFrame string"
		elseif t == "BrickColor" then
			local ok, bc = pcall(BrickColor.new, valStr)
			if not ok then return nil, "invalid BrickColor name '" .. valStr .. "'" end
			return bc
		else
			return nil, "unsupported type '" .. t .. "' — use run() to set manually"
		end
	end

	Tools.register({
		definition = {
			type = "function",
			["function"] = {
				name        = "set_property",
				description = "Set a property on an instance. Automatically coerces the value string to the correct type (number, boolean, Vector3, Color3, Enum, UDim2, CFrame, BrickColor, string). If the instance is a Model or container that doesn't have the property directly, automatically applies to all BasePart descendants (useful for setting body color on a character).",
				parameters  = {
					type       = "object",
					properties = {
						path     = { type = "string", description = "Instance path e.g. 'game.Workspace.Part' or 'game.Players.LocalPlayer.Character'" },
						property = { type = "string", description = "Property name e.g. 'Anchored', 'WalkSpeed', 'Color', 'BrickColor'" },
						value    = { type = "string", description = "New value as a string. Numbers: '100'. Booleans: 'true'/'false'. Vector3: 'x,y,z'. Color3: '#rrggbb' or 'r,g,b' (0-255). Enum: 'Plastic', 'Smooth', etc. UDim2: 'sx,ox,sy,oy'." },
					},
					required = { "path", "property", "value" }
				}
			}
		},
		handler = function(args)
			local inst, err = resolvePath(args.path)
			if not inst then return "Error: " .. tostring(err) end

			local valStr = tostring(args.value)
			local prop   = args.property

			-- Try reading the property directly on the instance
			local readOk, cur = pcall(function() return inst[prop] end)

			if not readOk then
				-- Property not on this instance — fall back to all BasePart descendants
				local parts = {}
				for _, desc in ipairs(inst:GetDescendants()) do
					if desc:IsA("BasePart") then
						local pok, pcur = pcall(function() return desc[prop] end)
						if pok then parts[#parts+1] = { inst = desc, cur = pcur } end
					end
				end
				if #parts == 0 then
					return "Error: '" .. prop .. "' not found on " .. inst.ClassName .. " or any BasePart descendants."
				end
				local coerced, coerceErr = coerceValue(parts[1].cur, valStr)
				if coerced == nil then return "Error: " .. coerceErr end
				local count = 0
				for _, p in ipairs(parts) do
					local setOk = pcall(function() p.inst[prop] = coerced end)
					if setOk then count = count + 1 end
				end
				return "Set " .. prop .. " = " .. tostring(coerced) .. " on " .. count .. " parts in " .. inst:GetFullName()
			end

			-- Direct set on the instance
			local coerced, coerceErr = coerceValue(cur, valStr)
			if coerced == nil then return "Error: " .. coerceErr end
			local setOk, setErr = pcall(function() inst[prop] = coerced end)
			if not setOk then return "Error setting property: " .. tostring(setErr) end
			return inst:GetFullName() .. "." .. prop .. " = " .. tostring(coerced)
		end
	})

	-- call_method: invoke any method on an instance
	local function serializeResult(v)
		local t = typeof(v)
		if v == nil                then return "nil" end
		if t == "boolean"
		or t == "number"
		or t == "string"           then return tostring(v) end
		if t == "Instance"         then return v.ClassName .. " " .. v:GetFullName() end
		if t == "table" then
			local parts = {}
			for i, item in ipairs(v) do
				parts[i] = serializeResult(item)
				if i >= 50 then parts[#parts+1] = "...+" .. (#v - 50) .. " more"; break end
			end
			return "{\n  " .. table.concat(parts, "\n  ") .. "\n}"
		end
		return tostring(v)
	end

	Tools.register({
		definition = {
			type = "function",
			["function"] = {
				name        = "call_method",
				description = "Call any method on an instance and return the result. Covers every Roblox API — service calls (GetAsync, GetDeveloperProductsAsync), instance methods (TakeDamage, FindFirstChildWhichIsA), etc. For methods that need Instance arguments, pass their path string.",
				parameters  = {
					type       = "object",
					properties = {
						path   = { type = "string", description = "Instance path e.g. 'game.Players.LocalPlayer.Humanoid'" },
						method = { type = "string", description = "Method name e.g. 'TakeDamage', 'GetAsync', 'FindFirstChildWhichIsA'" },
						args   = {
							type  = "array",
							items = {},
							description = "Arguments to pass (strings, numbers, booleans). Strings that are valid instance paths are resolved to instances automatically.",
						},
					},
					required = { "path", "method" }
				}
			}
		},
		handler = function(args)
			local inst, err = resolvePath(args.path)
			if not inst then return "Error: " .. tostring(err) end
			local method = args.method
			local ok, val = pcall(function() return inst[method] end)
			if not ok or type(val) ~= "function" then
				return "Error: " .. inst.ClassName .. " has no method '" .. method .. "'"
			end
			local callArgs = {}
			for _, a in ipairs(args.args or {}) do
				if type(a) == "string" then
					local resolved = resolvePath(a)
					callArgs[#callArgs+1] = resolved or a
				else
					callArgs[#callArgs+1] = a
				end
			end
			local results = table.pack(pcall(inst[method], inst, table.unpack(callArgs)))
			if not results[1] then return "Error: " .. tostring(results[2]) end
			local out = {}
			for i = 2, results.n do out[#out+1] = serializeResult(results[i]) end
			return #out > 0 and table.concat(out, "\n") or "Done (no return value)"
		end
	})

	-- create_instance: create a new instance, optionally parent and configure it
	Tools.register({
		definition = {
			type = "function",
			["function"] = {
				name        = "create_instance",
				description = "Create a new Roblox instance. Optionally set properties and parent it in one call.",
				parameters  = {
					type       = "object",
					properties = {
						class      = { type = "string", description = "ClassName e.g. 'Part', 'RemoteEvent', 'StringValue'" },
						parent     = { type = "string", description = "Path to parent instance (default: game.Workspace)" },
						properties = { type = "object", description = "Key/value pairs of properties to set, same string format as set_property." },
					},
					required = { "class" }
				}
			}
		},
		handler = function(args)
			local ok, inst = pcall(Instance.new, args.class)
			if not ok then return "Error: invalid class '" .. tostring(args.class) .. "': " .. tostring(inst) end

			for prop, valStr in pairs(args.properties or {}) do
				local readOk, cur = pcall(function() return inst[prop] end)
				if readOk then
					local coerced, coerceErr = coerceValue(cur, tostring(valStr))
					if coerced ~= nil then
						pcall(function() inst[prop] = coerced end)
					end
				end
			end

			local parentPath = args.parent or "game.Workspace"
			local parent, perr = resolvePath(parentPath)
			if not parent then
				inst:Destroy()
				return "Error: invalid parent path '" .. parentPath .. "': " .. tostring(perr)
			end
			inst.Parent = parent
			return "Created " .. args.class .. " at " .. inst:GetFullName()
		end
	})

	-- delete: destroy an instance
	Tools.register({
		definition = {
			type = "function",
			["function"] = {
				name        = "delete",
				description = "Destroy an instance and all its descendants.",
				parameters  = {
					type       = "object",
					properties = {
						path = { type = "string", description = "Instance path to destroy" },
					},
					required = { "path" }
				}
			}
		},
		handler = function(args)
			local inst, err = resolvePath(args.path)
			if not inst then return "Error: " .. tostring(err) end
			if inst == game then return "Error: cannot delete game" end
			local name = inst:GetFullName()
			inst:Destroy()
			return "Deleted " .. name
		end
	})

	-- local_player: get full info about the local player and their character
	Tools.register({
		definition = {
			type = "function",
			["function"] = {
				name        = "local_player",
				description = "Get info about the local player: name, userId, character stats (WalkSpeed, Health, etc.). Use this when the user asks about themselves — 'my walkspeed', 'my health', 'who am I', etc.",
				parameters  = { type = "object", properties = {} }
			}
		},
		handler = function()
			local lp = Players.LocalPlayer
			if not lp then return "LocalPlayer not available." end
			local lines = {
				"Player: " .. lp.Name .. " (DisplayName: " .. lp.DisplayName .. ", UserId: " .. lp.UserId .. ")",
			}
			local char = lp.Character
			if not char then
				lines[#lines+1] = "Character: not loaded"
				return table.concat(lines, "\n")
			end
			lines[#lines+1] = "Character: " .. char.Name .. " @ " .. char:GetFullName()
			local hum = char:FindFirstChildOfClass("Humanoid")
			if hum then
				lines[#lines+1] = "  WalkSpeed  = " .. tostring(hum.WalkSpeed)
				lines[#lines+1] = "  JumpPower  = " .. tostring(hum.JumpPower)
				lines[#lines+1] = "  JumpHeight = " .. tostring(hum.JumpHeight)
				lines[#lines+1] = "  Health     = " .. tostring(hum.Health)
				lines[#lines+1] = "  MaxHealth  = " .. tostring(hum.MaxHealth)
				lines[#lines+1] = "  RigType    = " .. tostring(hum.RigType)
			else
				lines[#lines+1] = "  No Humanoid found in character"
			end
			local root = char:FindFirstChild("HumanoidRootPart")
			if root then
				lines[#lines+1] = "  Position   = " .. tostring(root.Position)
			end
			-- List all BasePart names so AI knows exact part names to target
			local partNames = {}
			for _, desc in ipairs(char:GetChildren()) do
				if desc:IsA("BasePart") then
					partNames[#partNames+1] = desc.Name
				end
			end
			if #partNames > 0 then
				lines[#lines+1] = "  Parts: " .. table.concat(partNames, ", ")
			end
			return table.concat(lines, "\n")
		end
	})

	-- get_players: list all players in the server
	Tools.register({
		definition = {
			type = "function",
			["function"] = {
				name        = "get_players",
				description = "List all players currently in the server with basic info.",
				parameters  = { type = "object", properties = {} }
			}
		},
		handler = function()
			local players = game:GetService("Players"):GetChildren()
			if #players == 0 then return "No players in server." end
			local lines = {}
			for _, p in ipairs(players) do
				if p:IsA("Player") then
					lines[#lines+1] = p.Name .. " (UserId: " .. p.UserId .. ", DisplayName: " .. p.DisplayName .. ")"
				end
			end
			return table.concat(lines, "\n")
		end
	})

	-- decompile: decompile a script instance (executor only)
	Tools.register({
		definition = {
			type = "function",
			["function"] = {
				name        = "decompile",
				description = "Decompile a Script, LocalScript, or ModuleScript back to Lua source. Only works in executor environments that provide a decompile() global. Not available in Roblox Studio.",
				parameters  = {
					type       = "object",
					properties = {
						path    = { type = "string",  description = "Instance path e.g. 'game.Workspace.MyScript'" },
						mode    = { type = "string",  description = "Decompile mode (optional, executor-specific — e.g. 'default')" },
						timeout = { type = "number",  description = "Timeout in seconds (optional)" },
					},
					required = { "path" }
				}
			}
		},
		handler = function(args)
			if type(decompile) ~= "function" then
				return "decompile() is not available in this environment. This tool only works inside an executor (e.g. Synapse, KRNL). In Roblox Studio, use source() instead to read unobfuscated scripts."
			end
			local inst, err = resolvePath(args.path)
			if not inst then return "Error: " .. tostring(err) end
			if not (inst:IsA("BaseScript") or inst:IsA("ModuleScript")) then
				return "Error: " .. inst.ClassName .. " is not a script instance."
			end
			local ok, result
			if args.mode ~= nil or args.timeout ~= nil then
				ok, result = pcall(decompile, inst, args.mode, args.timeout)
			else
				ok, result = pcall(decompile, inst)
			end
			if not ok then return "Decompile failed: " .. tostring(result) end
			if not result or result == "" then return "Decompile returned empty output." end
			return result
		end
	})

end
