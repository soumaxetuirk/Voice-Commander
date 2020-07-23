function play(ID)
	managers.player:local_player():sound():say(ID,true,true)
	active = 0
end
function convert(lvalue)
	if lvalue == "Back" then qmenu(1)
	elseif lvalue == "Exit" then 
		qmenu (0)
		active = 0
	elseif lvalue == "I NEED  >>   " then qmenu(2)	
	elseif lvalue == "Stealth   >>   " then qmenu(3)	 
	elseif lvalue == "Loud  >>   " then qmenu(4)
	elseif lvalue == "Thanks" then play("s05x_sin")
	elseif lvalue == "Let's go" then play("g13")
	elseif lvalue == "Come with Me" then play("f38_any")
	elseif lvalue == "Here it is" then play("v04")
	elseif lvalue == "Right way" then play("g12")	
	elseif lvalue == "Wrong way" then play("g11")	
	elseif lvalue == "Get In" then play("g08")	
	elseif lvalue == "Hurry" then play("g09")	
	elseif lvalue == "love it" then play("g60")	
	elseif lvalue == "fu@#***" then play("g29")	
	elseif lvalue == "Ammo bag" then play("g81x_plu")	
	elseif lvalue == "Medic bag" then play("g80x_plu")
	elseif lvalue == "HELP" then play("f11e_plu")
	elseif lvalue == "Keycard Here" then play("v10")	
	elseif lvalue == "Crowbar Here" then play("v57")
	elseif lvalue == "careful" then play("g10")
	elseif lvalue == "watch civillians" then play("g27")
	elseif lvalue == "Takeout camers" then play("g25")
	elseif lvalue == "Use cable ties" then play("g26")
	elseif lvalue == "Kill'em all" then play("v18")
	elseif lvalue == "Get Out" then play("g07")
	elseif lvalue == "get moving" then play("g18")
	elseif lvalue == "I will wait" then play("p32")
	elseif lvalue == "we are done" then play("v08")
	elseif lvalue == "open door" then play("v15")
	elseif lvalue == "Drill jammed" then play("d01x_sin")
	elseif lvalue == "escape this way" then play("v26")
	elseif lvalue == "turret here" then play("v45")
	end
end

function qmenu(lcode)
	local menu_title = ("Voice Commander V4")
	local message_list = {"Thanks", "Let's go", "Come with Me", "Here it is", "Right way", "Wrong way", "Get In", "Hurry", "love it", "fu@#***", "I NEED  >>   ", "Stealth   >>   ", "Loud  >>   ", "Drill jammed", "Keycard Here", "Crowbar Here","Exit"}
	local needmenu = {"Ammo bag", "Medic bag", "HELP","Exit"}
	local stealthmenu = {"careful", "open door","watch civillians", "Takeout camers","Use cable ties","I will wait","Exit"}
	local loudmenu = {"Kill'em all", "Get Out","turret here", "get moving","we are done","escape this way", "Exit"}
	_G.menu_options = {}
			for i=1,#message_list do
			menu_options[i] ={text = message_list[i], data = message_list[i], callback = convert}
			end
	_G.menu_options2 = {}
			for i=1,#needmenu do
			menu_options2[i] ={text = needmenu[i], data = needmenu[i], callback = convert}
			end
	_G.menu_options3 = {}
			for i=1,#stealthmenu do
			menu_options3[i] ={text = stealthmenu[i], data = stealthmenu[i], callback = convert}
			end
	_G.menu_options4 = {}
			for i=1,#loudmenu do
			menu_options4[i] ={text = loudmenu[i], data = loudmenu[i], callback = convert}
			end
	if lcode == 1 then
		Menu = QuickMenu:new( menu_title, "By Soum_AxetuirK", menu_options)
		Menu:Show()
	elseif lcode == 2 then
		active = 2
		Menu = QuickMenu:new( menu_title2, "I NEED  >>", menu_options2)
		Menu:Show()
	elseif lcode == 3 then
		active = 2
		Menu = QuickMenu:new( menu_title, "Stealth   >>", menu_options3)
		Menu:Show()
	elseif lcode == 4 then
		active = 2
		Menu = QuickMenu:new( menu_title, "Loud  >>", menu_options4)
		Menu:Show()
	elseif lcode == 0 then
		Menu:Hide()	
	end
end


if  active == nil or active == 0 then
		active = 1
		qmenu(1)	
elseif active == 2 then
		qmenu(0)
end

