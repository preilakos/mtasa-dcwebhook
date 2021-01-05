-- created by zsenel

local discordWebhookURL = "url"

function sendDiscordMessage(message)
sendOptions = {
    formFields = {
        content="```"..message.."```"
    },
}
fetchRemote ( discordWebhookURL, sendOptions, WebhookCallback )
end

-- 2 arguments (responseData gives back the response or "ERROR" )
function WebhookCallback(responseData) 
outputDebugString("(Discord webhook callback): responseData: "..responseData)
end

-- SendDiscordTestMessage (deletable, it's a sample function)
function SendDiscordTestMessage(player, command, ...)
local msg = table.concat({...}," ") -- for multiple words
sendDiscordMessage(msg)
end
addCommandHandler("dcmessage", SendDiscordTestMessage)
