function SetMass(args)
	local splittedText = args.text:split ( " " )
    if ( splittedText ) then
        if ( splittedText [ 1 ] == "/mass" ) then
            local amount = tonumber ( splittedText [ 2 ] )

			if args.player:GetWorld() ~= DefaultWorld then return end
			if not args.player:InVehicle() then return end
			if args.player:GetState() ~= PlayerState.InVehicle then return end

			local v = args.player:GetVehicle()

			if ( amount and amount > 0 ) then
				v:SetMass(amount)
				args.player:SendChatMessage(
						"You have set the mass of your vehicle to ".. (amount),
						Color( 255, 0, 0 ) )
			else
				args.player:SendChatMessage ( "Invalid amount specified!", Color ( 255, 0, 0 ) )
			end
		end
	end
end
 
Events:Subscribe("PlayerChat", SetMass)