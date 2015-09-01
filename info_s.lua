local timer = 5000 -- Odstęp między kolejnymi wiadomościami w sekundach

local msgs = {
	[1] = {"Zasób 'Random Messages' stworzony przez: valster"},
	[2] = {"Zapraszamy na forum MTAPolska.pl"},
	[3] = {"Serwer dumnie hostowany przez serverproject.pl"}
}

setTimer(function ()
	local r = math.random(1, #msgs)
	for i,v in ipairs(getElementsByType("player")) do
		outputChatBox(msgs[r][1], v)
	end
end, timer*1000, 0)