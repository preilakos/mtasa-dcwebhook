-- created by zsenel

local discordWebhookURL = "url" -- eg. https://discord.com/api/webhooks/795842486513565716/RNmeiw5hyoIVy2mXbuh_J3QYaS-IxgA18tyjJgWOdcGUbnWBjbpHW_eg-AdvTJs0DcAE

function sendDiscordMessage(message)
sendOptions = {
    formFields = {
        content="```"..message.."```"
    },
}
fetchRemote ( discordWebhookURL, sendOptions, WebhookCallback )
end

-- 2 arguments (responseData gives back the response or "ERROR", errorMessage gives back an integer see https://wiki.multitheftauto.com/wiki/FetchRemote for the error code list. )
function WebhookCallback(responseData, errorMessage) 
outputDebugString("(Discord webhook callback): responseData: "..responseData..", errorMessage: "..errorMessage)
end

-- SendDiscordTestMessage (deletable, it's a sample function)
function SendDiscordTestMessage(player, command, ...)
local msg = table.concat({...}," ") -- for multiple words
sendDiscordMessage(msg)
end
addCommandHandler("dcmessage", SendDiscordTestMessage)
