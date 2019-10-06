local discordWebhookURL = "url"

function sendDiscordMessage(message)
sendOptions = {
    queueName = "dcq",
    connectionAttempts = 3,
    connectTimeout = 5000,
    formFields = {
        content="```"..message.."```"
    },
}
fetchRemote ( discordWebhookURL, sendOptions, callback )
end

function callback()
outputDebugString("Message sent!")
end

-- Test the function
function test(player, command, ...)
local msg = table.concat({...}," ") -- for multiple words
sendDiscordMessage(msg)
end
addCommandHandler("dcmessage", test)