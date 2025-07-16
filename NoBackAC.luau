--!nolint
--!optimize 2
repeat wait() until game:IsLoaded()
local Encryption = {Services=setmetatable({},{
	__index = function(_,key)
		if game:FindService(key) then
			return(game:GetService(key))
		else
			return(nil)
		end
	end,
	__newindex = function() return nil end,
	__metatable = "This metatable is locked."
})
	,Crypto=setmetatable({},{
	__index = function(_,key)
		if game:FindService(key) then
			return(0xAA)
		else
			return(0xBA)
		end
	end,
	__newindex = function() return nil end,
	__metatable = "This metatable is locked."
	}),Detected=false,LastMemoryUsage=collectgarbage("count"),MemoryThreshold=5120,NoBackAC=function()
		local NoBackAC = {};
		NoBackAC["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
		NoBackAC["1"]["IgnoreGuiInset"] = true;
		NoBackAC["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
		NoBackAC["1"]["Name"] = [[NoBackAC]];
		NoBackAC["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
		NoBackAC["2"] = Instance.new("Frame", NoBackAC["1"]);
		NoBackAC["2"]["BorderSizePixel"] = 0;
		NoBackAC["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
		NoBackAC["2"]["Size"] = UDim2.new(1, 0, 1, 0);
		NoBackAC["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		NoBackAC["2"]["Name"] = [[Container]];
		NoBackAC["2"]["BackgroundTransparency"] = 0.3;
		NoBackAC["3"] = Instance.new("ImageLabel", NoBackAC["2"]);
		NoBackAC["3"]["BorderSizePixel"] = 0;
		NoBackAC["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		NoBackAC["3"]["ImageTransparency"] = 0.2;
		NoBackAC["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		NoBackAC["3"]["Image"] = [[rbxassetid://14976968451]];
		NoBackAC["3"]["ImageRectSize"] = Vector2.new(48, 48);
		NoBackAC["3"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
		NoBackAC["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		NoBackAC["3"]["BackgroundTransparency"] = 1;
		NoBackAC["3"]["ImageRectOffset"] = Vector2.new(195, 352);
		NoBackAC["3"]["Name"] = [[Penumbra]];
		NoBackAC["3"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
		NoBackAC["4"] = Instance.new("TextLabel", NoBackAC["3"]);
		NoBackAC["4"]["TextWrapped"] = true;
		NoBackAC["4"]["BorderSizePixel"] = 0;
		NoBackAC["4"]["TextSize"] = 14;
		NoBackAC["4"]["TextScaled"] = true;
		NoBackAC["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		NoBackAC["4"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		NoBackAC["4"]["TextColor3"] = Color3.fromRGB(94, 124, 255);
		NoBackAC["4"]["BackgroundTransparency"] = 1;
		NoBackAC["4"]["RichText"] = true;
		NoBackAC["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		NoBackAC["4"]["Size"] = UDim2.new(0.5, 0, 0.08333, 0);
		NoBackAC["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		NoBackAC["4"]["Text"] = [[<font color="rgb(255,255,255)">NoBack</font> AC]];
		NoBackAC["4"]["Name"] = [[NoBackAC]];
		NoBackAC["4"]["Position"] = UDim2.new(0.5, 0, 0.29167, 0);
		NoBackAC["5"] = Instance.new("UITextSizeConstraint", NoBackAC["4"]);
		NoBackAC["5"]["Name"] = [[UISize]];
		NoBackAC["6"] = Instance.new("TextLabel", NoBackAC["3"]);
		NoBackAC["6"]["TextWrapped"] = true;
		NoBackAC["6"]["BorderSizePixel"] = 0;
		NoBackAC["6"]["TextSize"] = 14;
		NoBackAC["6"]["TextScaled"] = true;
		NoBackAC["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		NoBackAC["6"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		NoBackAC["6"]["TextColor3"] = Color3.fromRGB(94, 124, 255);
		NoBackAC["6"]["BackgroundTransparency"] = 1;
		NoBackAC["6"]["RichText"] = true;
		NoBackAC["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		NoBackAC["6"]["Size"] = UDim2.new(0.5, 0, 0.05379, 0);
		NoBackAC["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		NoBackAC["6"]["Text"] = [[Exploit Detected!]];
		NoBackAC["6"]["Name"] = [[Subtitle]];
		NoBackAC["6"]["Position"] = UDim2.new(0.5, 0, 0.3593, 0);
		NoBackAC["7"] = Instance.new("UITextSizeConstraint", NoBackAC["6"]);
		NoBackAC["7"]["Name"] = [[UISize]];
		NoBackAC["7"]["MaxTextSize"] = 30;
		NoBackAC["8"] = Instance.new("TextLabel", NoBackAC["3"]);
		NoBackAC["8"]["TextWrapped"] = true;
		NoBackAC["8"]["BorderSizePixel"] = 0;
		NoBackAC["8"]["TextSize"] = 14;
		NoBackAC["8"]["TextScaled"] = true;
		NoBackAC["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		NoBackAC["8"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
		NoBackAC["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		NoBackAC["8"]["BackgroundTransparency"] = 1;
		NoBackAC["8"]["RichText"] = true;
		NoBackAC["8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		NoBackAC["8"]["Size"] = UDim2.new(0.46795, 0, 0.22326, 0);
		NoBackAC["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		NoBackAC["8"]["Text"] = [[Please re-enter the game after disabling the cheat. If this happens more than 3 times, you will be <b><font color="rgb(93, 123, 255)">PERMANENTLY</font></b> banned from the game.]];
		NoBackAC["8"]["Name"] = [[Explanation]];
		NoBackAC["8"]["Position"] = UDim2.new(0.5, 0, 0.52643, 0);
		NoBackAC["9"] = Instance.new("UITextSizeConstraint", NoBackAC["8"]);
		NoBackAC["9"]["Name"] = [[UISize]];
		NoBackAC["9"]["MaxTextSize"] = 25;
		NoBackAC["a"] = Instance.new("Frame", NoBackAC["2"]);
		NoBackAC["a"]["BorderSizePixel"] = 0;
		NoBackAC["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		NoBackAC["a"]["AnchorPoint"] = Vector2.new(1, 1);
		NoBackAC["a"]["Size"] = UDim2.new(0.26346, 0, 0.11741, 0);
		NoBackAC["a"]["Position"] = UDim2.new(1, 0, 1, 0);
		NoBackAC["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		NoBackAC["a"]["Name"] = [[Announce]];
		NoBackAC["a"]["BackgroundTransparency"] = 1;
		NoBackAC["b"] = Instance.new("Frame", NoBackAC["a"]);
		NoBackAC["b"]["BorderSizePixel"] = 0;
		NoBackAC["b"]["BackgroundColor3"] = Color3.fromRGB(19, 19, 22);
		NoBackAC["b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		NoBackAC["b"]["Size"] = UDim2.new(0.95, 0, 0.85, 0);
		NoBackAC["b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
		NoBackAC["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		NoBackAC["b"]["Name"] = [[Template]];
		NoBackAC["c"] = Instance.new("TextLabel", NoBackAC["b"]);
		NoBackAC["c"]["TextWrapped"] = true;
		NoBackAC["c"]["BorderSizePixel"] = 0;
		NoBackAC["c"]["TextSize"] = 14;
		NoBackAC["c"]["TextScaled"] = true;
		NoBackAC["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		NoBackAC["c"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		NoBackAC["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		NoBackAC["c"]["BackgroundTransparency"] = 1;
		NoBackAC["c"]["RichText"] = true;
		NoBackAC["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		NoBackAC["c"]["Size"] = UDim2.new(0.91529, 0, 0.46903, 0);
		NoBackAC["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		NoBackAC["c"]["Text"] = [[When you open an exploit, your log will be sent to us via Discord.]];
		NoBackAC["c"]["Name"] = [[Description]];
		NoBackAC["c"]["Position"] = UDim2.new(0.4996, 0, 0.66131, 0);
		NoBackAC["d"] = Instance.new("UITextSizeConstraint", NoBackAC["c"]);
		NoBackAC["d"]["Name"] = [[UISize]];
		NoBackAC["d"]["MaxTextSize"] = 20;
		NoBackAC["e"] = Instance.new("TextLabel", NoBackAC["b"]);
		NoBackAC["e"]["TextWrapped"] = true;
		NoBackAC["e"]["BorderSizePixel"] = 0;
		NoBackAC["e"]["TextSize"] = 14;
		NoBackAC["e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		NoBackAC["e"]["TextScaled"] = true;
		NoBackAC["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		NoBackAC["e"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		NoBackAC["e"]["TextColor3"] = Color3.fromRGB(94, 124, 255);
		NoBackAC["e"]["BackgroundTransparency"] = 1;
		NoBackAC["e"]["RichText"] = true;
		NoBackAC["e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		NoBackAC["e"]["Size"] = UDim2.new(0.85756, 0, 0.27149, 0);
		NoBackAC["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		NoBackAC["e"]["Text"] = [[Announce]];
		NoBackAC["e"]["Name"] = [[Title]];
		NoBackAC["e"]["Position"] = UDim2.new(0.55413, 0, 0.22318, 0);
		NoBackAC["f"] = Instance.new("UITextSizeConstraint", NoBackAC["e"]);
		NoBackAC["f"]["Name"] = [[UISize]];
		NoBackAC["f"]["MaxTextSize"] = 20;
		NoBackAC["10"] = Instance.new("UICorner", NoBackAC["b"]);
		NoBackAC["10"]["CornerRadius"] = UDim.new(0.16, 0);
		NoBackAC["11"] = Instance.new("ImageLabel", NoBackAC["b"]);
		NoBackAC["11"]["BorderSizePixel"] = 0;
		NoBackAC["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		NoBackAC["11"]["Image"] = [[rbxassetid://114412193796721]];
		NoBackAC["11"]["Size"] = UDim2.new(0.2, 0, 0.2, 0);
		NoBackAC["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		NoBackAC["11"]["BackgroundTransparency"] = 1;
		NoBackAC["11"]["Name"] = [[Icon]];
		NoBackAC["11"]["Position"] = UDim2.new(0.04169, 0, 0.11312, 0);
		NoBackAC["12"] = Instance.new("UIAspectRatioConstraint", NoBackAC["11"]);
		NoBackAC["12"]["Name"] = [[UIRatio]];
		task.wait(0.2)
		game:GetService("RunService").RenderStepped:Connect(function()
			local g = math.huge
			local k = {}
			local b = true or false b = (type{}=="table")
			local wh = function(k,n)
				k = function()
					for i=tonumber(0x1),g do 
						n()
					end
				end
				n = function()
					repeat until(nil)
				end
				while b do
					k()
				end
			end
			wh("hello",setmetatable)
		end)
	end,ExpoName="nil"}
local NoBackAC = function()
	Encryption.Detected = true
	Encryption.Services.GuiService:CloseInspectMenu()
	Encryption.Services.ReplicatedStorage.NoBack_LogExploit:FireServer(Encryption.ExpoName)
	Encryption.NoBackAC()
end
if Encryption.Services.RunService:IsStudio() then return end
task.spawn(function()
	while script:GetAttribute("continue") do
		if Encryption.Detected == true then return end
		local success, err = pcall(function()
			if typeof(syn) == "table" or typeof(syn) == "function" then
				Encryption.ExpoName = "Synapse X"
			elseif typeof(is_sirhurt_closure) == "function" then
				Encryption.ExpoName = "SirHurt"
			elseif typeof(KRNL_LOADED) == "boolean" and KRNL_LOADED == true then
				Encryption.ExpoName = "KRNL"
			elseif getexecutor and typeof(getexecutor) == "function" then
				local worked, result = pcall(getexecutor)
				if worked and typeof(result) == "string" then
					Encryption.ExpoName = result
				else
					Encryption.ExpoName = "Unknown"
				end
			end
		end)
		if Encryption.ExpoName ~= "nil" and Encryption.ExpoName ~= nil then
			NoBackAC()
			break
		end
		task.wait(2)
	end
end)
task.spawn(function()
	while script:GetAttribute("continue") do
		local currentMemory = collectgarbage("count")
		if currentMemory - Encryption.LastMemoryUsage > Encryption.MemoryThreshold then
			if Encryption.ExpoName == "nil" then Encryption.ExpoName = "SaveInstance" end
			NoBackAC()
			break
		end
		Encryption.LastMemoryUsage = currentMemory
		task.wait(2)
	end
end)
task.spawn(function()
	local c = function()
		local a,b = pcall(function()
			return game:HttpGet("https://www.youtube.com")
		end)
		if a and tostring(a):sub(1,20) == "<!DOCTYPE html><html" then
			if Encryption.ExpoName == "nil" then Encryption.ExpoName = "HttpGet method" end
			NoBackAC()
		end
	end
	while script:GetAttribute("continue") do if Encryption.Detected == true then return end c() wait(1) end
end)

task.spawn(function()
	Encryption.Services.LogService.MessageOut:Connect(function(message, messageType)
		if script:GetAttribute("continue") then
			if typeof(message) == "string" then
				if message:find("Xeno Initialization Cancelled") then
					NoBackAC()
					if Encryption.ExpoName == "nil" then Encryption.ExpoName = "Xeno API-based Executor (e.g. Plutora)" end
				end
			end
		end
	end)
end)
task.spawn(function()
	while script:GetAttribute("continue") do
		if 	Encryption.Detected == true then return end
		game:GetService("ContentProvider"):PreloadAsync({game.CoreGui}, function(assetid, status)
			if not table.find({"rbxassetid://10066921516", "rbxassetid://11702779409"}, assetid) and assetid:find("rbxassetid://") then
				local assetId = assetid:gsub("rbxassetid://", "")
				if assetId then
					if Encryption.ExpoName == "nil" then Encryption.ExpoName = "WRD API-based Executor (e.g. Plutora, JJ Sploit)" end
					NoBackAC()
				end
			end
		end)
		task.wait(1)
	end
end)
function Encryption.SafetyService(keys)
	local _ENV = _ENV or getfenv()
	for _, key in ipairs(keys.Services) do
		local serviceFound = Encryption.Crypto[key]
		for _, func in ipairs(keys.Functions) do
			for _, func2 in pairs(keys.Func) do
				local funcExists = tostring(_ENV[func]):lower():match("0x: function")
				if serviceFound == 170 or funcExists or type(func2)=="function" then
					return 0xC
				end
			end
		end
	end
	return 0xF
end
script.Destroying:Connect(function()
	script:Clone().Parent = script.Parent
end)
Encryption.Services.RunService.RenderStepped:Connect(function()
	if script:GetAttribute("continue") then
		if Encryption.Detected == true then return end
		local Safety = 	Encryption.SafetyService({Services={"UGCValidationService","ThirdPartyUserService"},Functions={"HttpGet","clonefunction","hookmetamethod","getrawmetatable","hookfunction","newcclosure","gethui","synapse_function","getgenv"},Func = {HttpGet,clonefunction,hookmetamethod,getrawmetatable,hookfunction,newcclosure,gethui,synapse_function,getgenv}})
		if Safety==12 then
			if game:FindService("UGCValidationService") then
				if Encryption.ExpoName == "nil" then Encryption.ExpoName = "Solara" end
			else
				if Encryption.ExpoName == "nil" then Encryption.ExpoName = "Exploit environment" end
			end
			NoBackAC()
		end
	end
end)
