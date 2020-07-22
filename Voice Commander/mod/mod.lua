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
	
	elseif lvalue == "Ammo bag" then
		managers.player:local_player():sound():say("g81x_plu",true,true)	
	
	elseif lvalue == "Medic bag" then
		managers.player:local_player():sound():say("g80x_plu",true,true)

	elseif lvalue == "HELP" then
		managers.player:local_player():sound():say("f11e_plu",true,true)
	
	elseif lvalue == "Keycard Here" then
		managers.player:local_player():sound():say("v10",true,true)	
	
	elseif lvalue == "Crowbar Here" then
		managers.player:local_player():sound():say("v57",true,true)
	
	elseif lvalue == "careful" then
		managers.player:local_player():sound():say("g10",true,true)
	
	elseif lvalue == "watch civillians" then
		managers.player:local_player():sound():say("g27",true,true)
	
	elseif lvalue == "Takeout camers" then
		managers.player:local_player():sound():say("g25",true,true)
	
	elseif lvalue == "Use cable tie" then
		managers.player:local_player():sound():say("g26",true,true)
	
	elseif lvalue == "Keep Defend" then
		managers.player:local_player():sound():say("g16",true,true)
	
	elseif lvalue == "Get Out" then
		managers.player:local_player():sound():say("g07",true,true)
	
	elseif lvalue == "Get Moving" then
		managers.player:local_player():sound():say("p15",true,true)
	
	elseif lvalue == "we are done" then
		managers.player:local_player():sound():say("v08",true,true)
	
	elseif lvalue == "I NEED  >>   " then
		local menu_title = ("Voice Commander V3")
		local message_list = {"Ammo bag", "Medic bag", "HELP","Back","Exit"}
		local menu_options = {}
 
		for i=1,#message_list do
		menu_options[i] ={text = message_list[i], data = message_list[i], callback = Vcmd}
		end
		local menu = QuickMenu:new( menu_title, "I need >>", menu_options )
		menu:Show()
		
	elseif lvalue == "Back" then
		local menu_title = ("Voice Commander V3")
		local message_list = {"Thanks", "Let's go", "Come with Me", "Right Place", "Right way", "Wrong way", "Get In", "Hurry", "love it", "fu@#***", "I NEED  >>   ", "Stealth   >>   ", "Loud  >>   ", "Keycard Here", "Crowbar Here","EXIT"}
		local menu_options = {}
 
			for i=1,#message_list do
			menu_options[i] ={text = message_list[i], data = message_list[i], callback = Vcmd}
		end
		local menu = QuickMenu:new( menu_title, "by Soum_AxetuirK", menu_options )
		menu:Show()

	elseif lvalue == "Stealth   >>   " then
		local menu_title = ("Voice Commander V3")
		local message_list = {"careful", "watch civillians", "Takeout camers","Use cable ties","Back","Exit"}
		local menu_options = {}
 
		for i=1,#message_list do
		menu_options[i] ={text = message_list[i], data = message_list[i], callback = Vcmd}
		end
		local menu = QuickMenu:new( menu_title, "Stealth Menu", menu_options )
		menu:Show()

	elseif lvalue == "Loud  >>   " then
		local menu_title = ("Voice Commander V3")
		local message_list = {"Keep Defend", "Get Out", "Get Moving","we are done","Back","Exit"}
		local menu_options = {}
 
		for i=1,#message_list do
		menu_options[i] ={text = message_list[i], data = message_list[i], callback = Vcmd}
		end
		local menu = QuickMenu:new( menu_title, "Loud Menu", menu_options )
		menu:Show()
		end
end

local menu_title = ("Voice Commander V3")
local message_list = {"Thanks", "Let's go", "Come with Me", "Right Place", "Right way", "Wrong way", "Get In", "Hurry", "love it", "fu@#***", "I NEED  >>   ", "Stealth   >>   ", "Loud  >>   ", "Keycard Here", "Crowbar Here","EXIT"}
local menu_options = {}
 
	for i=1,#message_list do
		menu_options[i] ={text = message_list[i], data = message_list[i], callback = Vcmd}
	end
local menu = QuickMenu:new( menu_title, "by Soum_AxetuirK", menu_options )
menu:Show()


