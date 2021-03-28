function sendDiscordMessage( message )
	if ( message ) then
		triggerServerEvent( "webhook > send_message", resourceRoot, message );
	end
end
