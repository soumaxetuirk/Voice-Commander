function Vcmd(lvalue)
	if lvalue == "Thanks" then
		managers.player:local_player():sound():say("s05x_sin",true,true)
	
	elseif lvalue == "Let's go" then
		managers.player:local_player():sound():say("g13",true,true)
		
	elseif lvalue == "Come with Me" then
		managers.player:local_player():sound():say("p20",true,true)	
	
	elseif lvalue == "Right Place" then
		managers.player:local_player():sound():say("g14",true,true)	
	
	elseif lvalue == "Right way" then
		managers.player:local_player():sound():say("g12",true,true)	
	
	elseif lvalue == "Wrong way" then
		managers.player:local_player():sound():say("g11",true,true)	
	
	elseif lvalue == "Get In" then
		managers.player:local_player():sound():say("g08",true,true)	
	
	elseif lvalue == "Hurry" then
		managers.player:local_player():sound():say("g09",true,true)	
	
	elseif lvalue == "love it" then
		managers.player:local_player():sound():say("g60",true,true)	
	
	elseif lvalue == "fu@#***" then
		managers.player:local_player():sound():say("g29",true,true)	
	
	elseif lvalue == "Need Ammo" then
		managers.player:local_player():sound():say("g81x_plu",true,true)	
	
	elseif lvalue == "Need Medic Bag" then
		managers.player:local_player():sound():say("f11e_plu",true,true)	
	
	elseif lvalue == "Keycard Here" then
		managers.player:local_player():sound():say("v10",true,true)	
	
	elseif lvalue == "Crowbar Here" then
		managers.player:local_player():sound():say("v57",true,true)

	end
end

local menu_title = ("Voice Commander V1.0")
local message_list = {"Thanks", "Let's go", "Come with Me", "Right Place", "Right way", "Wrong way", "Get In", "Hurry", "love it", "fu@#***", "Need Ammo", "Need Medic Bag", "Need Help", "Keycard Here", "Crowbar Here","EXIT"}
local menu_options = {}
 
	for i=1,#message_list do
		menu_options[i] ={text = message_list[i], data = message_list[i], callback = Vcmd}
	end
local menu = QuickMenu:new( menu_title, "by Soum_AxetuirK. Respect other players, DO NOT SPAM", menu_options )
menu:Show()