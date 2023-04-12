--编码结尾为不是'的时候，只显示一个太极词，否则只显示太极词
--[[
local function filter(input,env)
	local input_text = env.engine.context.input
	local i=1
	for cand in input:iter() do
	if (input_text:find"^[a-z][a-z][a-z][a-z]?'?$")== 1 then
		if input_text:sub(-1,-1)~="'" then
			if i==1 and cand.comment ==" ☯ " then
				yield(cand)
			elseif i>1 and cand.comment ~=" ☯ " then
				yield(cand)
			end
		else
			if i>1 and cand.comment ==" ☯ " then
				yield(cand)
			end
		end
	else
		yield(cand)
	end
		i=i+1
	end--for
end
return { func = filter }
]]


--编码结尾为不是'的时候，只显示一个太极词，否则只显示太极词

local function filter(input,env)
	local input_text = env.engine.context.input
	local i=1
	for cand in input:iter() do
	if (input_text:find"^[a-z][a-z][a-z][a-z]?'?$")== 1 then
		if input_text:sub(-1,-1)~="'" then
			if i==1 and cand.comment ==" ☯ " then
				yield(cand)
			elseif cand.comment ~=" ☯ " then
				yield(cand)
			end
		else
			if cand.comment ==" ☯ " then
				yield(cand)
			end
		end
	else
		yield(cand)
	end
		i=i+1
	end--for
end
return { func = filter }