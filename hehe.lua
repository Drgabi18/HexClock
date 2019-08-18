function Initialize()
	local function LeOption(LeMeasure, LeObject)           return SKIN:GetMeasure(LeMeasure):GetOption(LeObject)         end
	local function LeSet(LeMeasure, LeOption, LeString)    return SKIN:Bang('!SetOption', LeMeasure, LeOption, LeString) end

	am = string.gsub(SKIN:GetVariable('AccurateMultiplier', 1), ",", ".")

	local a, b = LeOption('Color', 'String'), LeOption('SubColor', 'String')
	if SELF:GetNumberOption('IJustFlippedTheSwitch', '0') == 0 then 
		LeSet('Color',    'String', a)
		LeSet('SubColor', 'String', b)
	else 
		LeSet('Color',    'String', b)
		LeSet('SubColor', 'String', a)
	end
    
	if SKIN:GetVariable('ShowBox', 1) ~= "1" then 
		LeSet('TimeBox',  'SolidColor', '00000001')
		LeSet('CopyText', 'SolidColor', '00000001')
		LeSet('CopyTextAccurate', 'SolidColor', '00000001')
	end
end

function Do(stuff)
	--steve ur sister is hot
	local t={}
	local function Todd(ItJustWorks) return string.format("%02s", ItJustWorks) end
	--how the fuck
	
	for i = 1,5,2 do table.insert(t, i, stuff:sub(i, i+1)) end
	--1 2, 3 4, 5 6
	local a, b, c = Todd(string.format("%X", t[1] * am)), Todd(string.format("%X", t[3] * am)), Todd(string.format("%X", t[5] * am))
	return a..b..c
end
