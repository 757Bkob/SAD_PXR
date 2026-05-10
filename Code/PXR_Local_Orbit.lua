function SavegameFixups.PXR_Orbit_Cleanup()
	if Px_col_ship or MapVarValues['px_col_ship'] then
		Px_ship_logs['ColonyShip']['orbit'] = (Px_col_ship or MapVarValues['px_col_ship'])
	end
	if Px_col_trade or MapVarValues['px_col_trade'] then
		Px_ship_logs['ColonyShip']['trade'] = Px_col_trade or MapVarValues['px_col_trade']
	end
	if Px_col_hire or MapVarValues['px_col_hire'] then
		Px_ship_logs['ColonyShip']['hire'] = Px_col_hire or MapVarValues['px_col_hire']
	end
	if Px_navy_ship or MapVarValues['px_col_ship'] then
		Px_ship_logs['Battleship']['orbit'] = Px_navy_ship or MapVarValues['px_col_ship']
	end
	if Px_navy_trade or MapVarValues['px_navy_trade'] then
		Px_ship_logs['Battleship']['trade'] = Px_navy_trade or MapVarValues['px_navy_trade']
	end
	if Px_navy_hire or MapVarValues['px_navy_hire'] then
		Px_ship_logs['Battleship']['hire'] = Px_navy_hire or MapVarValues['px_navy_hire']
	end
	if Px_smuggle_ship or MapVarValues['px_smuggle_ship'] then
		Px_ship_logs['Smuggler']['orbit'] = Px_smuggle_ship or MapVarValues['px_smuggle_ship']
	end
	if Px_smuggle_trade or MapVarValues['px_smuggle_trade'] then
		Px_ship_logs['Smuggler']['trade'] = Px_smuggle_trade or MapVarValues['px_smuggle_trade']
	end
	if Px_smuggle_hire or MapVarValues['px_smuggle_hire'] then
		Px_ship_logs['Smuggler']['hire'] = Px_smuggle_hire or MapVarValues['px_smuggle_hire']
	end
	if Px_trade_ship or MapVarValues['px_trade_ship'] then
		Px_ship_logs['TradeShip']['orbit'] = Px_trade_ship or MapVarValues['px_trade_ship']
	end
	if Px_trade_trade or MapVarValues['px_trade_trade'] then
		Px_ship_logs['TradeShip']['trade'] = Px_trade_trade or MapVarValues['px_trade_trade']
	end
	if Px_trade_hire or MapVarValues['px_trade_hire'] then
		Px_ship_logs['TradeShip']['hire'] = Px_trade_hire or MapVarValues['px_trade_hire']
	end
	if Px_automated_ship or MapVarValues['px_automated_ship'] then
		Px_ship_logs['SmallCargoShip']['orbit'] = Px_automated_ship or MapVarValues['px_automated_ship']
	end
	if Px_automated_trade or MapVarValues['px_automated_trade'] then
		Px_ship_logs['SmallCargoShip']['trade'] = Px_automated_trade or MapVarValues['px_automated_trade']
	end
	if Px_automated_hire or MapVarValues['px_automated_hire'] then
		Px_ship_logs['SmallCargoShip']['hire'] = Px_automated_hire or MapVarValues['px_automated_hire']
	end
	if CheckForTradingShip() and CheckForTradingShip().preset_id and not Px_ship_logs[CheckForTradingShip().preset_id]['orbit'] then
		DebugPrint("oops a ship is trading but not marked as being in the local orbit!")
		Px_ship_logs[CheckForTradingShip().preset_id]['orbit'] = GameTime()
	end
end

DefineModItemPreset("TradingShipDef", { EditorName = "Trading Ship", EditorSubmenu = "Gameplay" })


function Refresh_ship_list()
	local day_length = const.DayDuration
	local any_ship_present = false
	--print('resetting ships available!')
	local ships = {}
	local base_chance = 33
	local max_allowed_in_orbit = 3
	local time_passed, days_passed, chance, roll, ship_trading
	if CheckForTradingShip() then
		ship_trading = CheckForTradingShip().preset_id
	end
	for i=1,#Presets.TradingShipDef.Default do
		if Presets.TradingShipDef.Default[i] and Presets.TradingShipDef.Default[i].id then
			roll = AsyncRand(101)
			local shipname = Presets.TradingShipDef.Default[i].id
			ships[#ships+1] = shipname
			--print("checking if "..shipname.." is in orbit!")
			--print("It rolled a: ")
			--print(roll)
			local ship_present = Px_ship_logs[shipname]['orbit']
			if ship_present then
				--print("it is in orbit.... checking if it is staying!")
				time_passed = GameTime() - ship_present
				days_passed = Max(1,DivRound(time_passed,day_length))
				-- 78% chance to stay, -4% per day it has been in orbit
				chance = base_chance + 45 - (days_passed * 4)
				if roll < chance or ship_trading == shipname then
					--print("It is indeed staying in orbit!")
					-- we still flag that this ship still exists on map
					any_ship_present = true
				else
					--print("it is leaving orbit!")
					Px_ship_logs[shipname]['orbit'] = nil
					Px_ship_logs[shipname]['trade'] = nil
					Px_ship_logs[shipname]['hire'] = nil
				end
			elseif roll < base_chance then
				--print("It is starting to be in orbit now!")
				Px_ship_logs[shipname]['orbit'] = GameTime()
				Px_ship_logs[shipname]['trade'] = true
				Px_ship_logs[shipname]['hire'] = true
				any_ship_present = true
			end
		end
	end
	for i=1,#Presets.TradingShipDef.Robots do
		if Presets.TradingShipDef.Robots[i] and Presets.TradingShipDef.Robots[i].id then
			roll = AsyncRand(101)
			local shipname = Presets.TradingShipDef.Robots[i].id
			ships[#ships+1] = shipname
			--print("checking if "..shipname.." is in orbit!")
			--print("It rolled a: ")
			--print(roll)
			local ship_present = Px_ship_logs[shipname]['orbit']
			if ship_present then
				--print("it is in orbit.... checking if it is staying!")
				time_passed = GameTime() - ship_present
				days_passed = Max(1,DivRound(time_passed,day_length))
				-- 78% chance to stay, -4% per day it has been in orbit
				chance = base_chance + 45 - (days_passed * 4)
				if roll < chance or ship_trading == shipname then
					--print("It is indeed staying in orbit!")
					-- we still flag that this ship still exists on map
					any_ship_present = true
				else
					--print("it is leaving orbit!")
					Px_ship_logs[shipname]['orbit'] = nil
					Px_ship_logs[shipname]['trade'] = nil
					Px_ship_logs[shipname]['hire'] = nil
				end
			elseif roll < base_chance then
				--print("It is starting to be in orbit now!")
				Px_ship_logs[shipname]['orbit'] = GameTime()
				Px_ship_logs[shipname]['trade'] = true
				Px_ship_logs[shipname]['hire'] = true
				any_ship_present = true
			end
		end
	end
	if not any_ship_present then
		roll = AsyncRand(101)
		--print("Rolled this for the 'at least one ship in orbit' roll!")
		if roll < 60 then -- On average, at least 1 ship will be available
			local temp = AsyncRand(#ships)
			local shipname = ships[temp]
			--local garunteed = ship_mapvars[temp]
			--print("This ship is now in orbit! "..ships[temp])
			Px_ship_logs[shipname]['orbit'] = GameTime()
			Px_ship_logs[shipname]['trade'] = true
			Px_ship_logs[shipname]['hire'] = true
		end
	end
end

-- animal rights activates

function build_ship_logs()
	if not Px_ship_logs then
		Px_ship_logs = {}
	end
	for i=1,#Presets.TradingShipDef.Default do
		if Presets.TradingShipDef.Default[i] and Presets.TradingShipDef.Default[i].id then
			local shipname = Presets.TradingShipDef.Default[i].id
			Px_ship_logs[shipname] = {}
			Px_ship_logs[shipname]['orbit'] = false
			Px_ship_logs[shipname]['trade'] = false
			Px_ship_logs[shipname]['hire'] = false
		end
	end
	for i=1,#Presets.TradingShipDef.Robots do
		if Presets.TradingShipDef.Robots[i] and Presets.TradingShipDef.Robots[i].id then
			local shipname = Presets.TradingShipDef.Robots[i].id
			Px_ship_logs[shipname] = {}
			Px_ship_logs[shipname]['orbit'] = false
			Px_ship_logs[shipname]['trade'] = false
			Px_ship_logs[shipname]['hire'] = false
		end
	end
	--Refresh_ship_list()
end

function Check_for_unknown_ships()
	if TradingShips['SmallCargoShip'] ~= nil then
		Droid_dlc=true
		if #table.keys(TradingShips) ~5 then
			ForceActivateStoryBit("unknownShip")
		end
	end
	if #table.keys(TradingShips) ~= 4 then
		ForceActivateStoryBit("unknownShip")
	end
end

function TFormat.t_ship_orbit(context_obj)
	local to_return = T{0,""}
	if Px_smuggle_ship == 'yes' or Px_trade_ship == 'yes' or Px_automated_ship == 'yes' then
		to_return = to_return..T{121110090813,"Cargo Ship Detected\n"}
	end
	if Px_navy_ship then
		to_return = to_return..T{121110090814,"BattleShip Detected\n"}
	end
	if Px_col_ship then
		to_return = to_return..T{121110090815,"Colony Ship Detected\n"}
	end
	if not Px_smuggle_ship and not Px_trade_ship  and not Px_col_ship and not Px_navy_ship and not Px_automated_ship then
		to_return = to_return..T{121110090816,"No Ships Detected!\n"}
	end
	return to_return
end