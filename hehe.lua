function Initialize()
	if SELF:GetNumberOption('IJustFlippedTheSwitch', '0') == 0 then else SKIN:Bang('!SetOption', 'Color', 'String', '[&Lua:f]'); SKIN:Bang('!SetOption', 'SubColor', 'String', '[R][G][B]') end
	Update()
end

function Update()
	function String(Muffet) return SKIN:GetMeasure(Muffet):GetStringValue() end
	r,g,b = String('R'), String('G'), String('B')
	Do(r..g..b)
end

function Do(stuff)
	local t={}

	for i = 1,5,2 do table.insert(t, i, stuff:sub(i, i+1)) end
	--1 2
	--3 4
	--5 6
	local function Todd(ItJustWorks) return string.format("%02s", ItJustWorks) end
	local a,b,c = Todd(string.format("%X", t[1])), Todd(string.format("%X", t[3])), Todd(string.format("%X", t[5]))
	f = a..b..c
	--steve ur sister is hot
end