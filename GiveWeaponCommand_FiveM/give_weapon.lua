RegisterCommand("weapon", function(source, args)
    -- Check if the command includes a weapon name
    if #args < 1 then
        print("^1Error: You must specify a weapon spawn name. Usage: /weapon weapon_spawn_name^0")
        return
    end

    -- Get the weapon name from the command arguments
    local weaponName = args[1]
    local ped = PlayerPedId()

    -- Convert weapon name to the correct hash key
    local weaponHash = GetHashKey(weaponName)

    -- Check if the weapon exists in the game
    if not IsWeaponValid(weaponHash) then
        print("^1Error: Invalid weapon spawn name. Make sure the weapon exists in the game.^0")
        return
    end

    -- Give the weapon to the player
    GiveWeaponToPed(ped, weaponHash, 250, false, true)
    print("^2Success: You have been given the weapon " .. weaponName .. "^0")
end)
