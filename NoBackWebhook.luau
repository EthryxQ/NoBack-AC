--!strict
--!nolint

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")

local WEBHOOK_URL = "YOUR_WEBHOOK_HERE"

local Remote = ReplicatedStorage:FindFirstChild("NoBack_LogExploit") or Instance.new("RemoteEvent")
Remote.Name = "NoBack_LogExploit"
Remote.Parent = ReplicatedStorage

local MaxRequests = 1
local RequestLog: { [Player]: { number } } = {}

local function GetAvatarImage(userId: number): string
	local success, result = pcall(function()
		return HttpService:JSONDecode(game:HttpGet(
			"https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. userId .. "&size=420x420&format=Png&isCircular=false"
			))
	end)

	if success and result and result.data and result.data[1] and result.data[1].imageUrl then
		return result.data[1].imageUrl
	end
	
	return ""
end


local function LogToDiscord(Player: Player, ExploitName: string)
	local Payload = {
		username = "NoBackAC",
		avatar_url = "https://cdn.discordapp.com/attachments/1393059737561727058/1393687373468012665/ipZ5K4d.png",
		embeds = {{
			title = "🚨  Exploit Attempt Detected",
			description = string.format(
				"**An exploit attempt has been detected and logged.**\n\n> 👤 **User:** %s (`%s`)\n> 🧪 **Exploit:** `%s`\n> 📅 **Account Age:** `%s days`\n> 🆔 **UserId:** `%s`\n> 🌐 **PlaceId:** `%s`",
				Player.DisplayName,
				Player.Name,
				ExploitName,
				tostring(Player.AccountAge),
				tostring(Player.UserId),
				tostring(game.PlaceId)
			),
			color = tonumber("E74C3C", 16),
			thumbnail = {
				url = GetAvatarImage(Player.UserId)
			},
			footer = {
				text = "NoBackAC Logger • ".. os.date("%Y-%m-%d"),
				icon_url = "https://cdn.discordapp.com/attachments/1393059737561727058/1393687373468012665/ipZ5K4d.png"
			},
			timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ", os.time())
		}}
	}

	pcall(function()
		HttpService:PostAsync(WEBHOOK_URL, HttpService:JSONEncode(Payload), Enum.HttpContentType.ApplicationJson)
	end)
end

local function IsAbusing(Player: Player): boolean
	local Logs = RequestLog[Player]
	if not Logs then
		Logs = {}
		RequestLog[Player] = Logs
	end

	table.insert(Logs, tick())

	return #Logs > MaxRequests
end

Players.PlayerAdded:Connect(function(Player)
	RequestLog[Player] = {}
end)

Players.PlayerRemoving:Connect(function(Player)
	RequestLog[Player] = nil
end)

Remote.OnServerEvent:Connect(function(Player, ExploitName)
	if IsAbusing(Player) then
		Player:Kick("[NoBackAC] Remote spam / RemoteSpy detected.")
		return
	end

	LogToDiscord(Player, ExploitName)
end)
