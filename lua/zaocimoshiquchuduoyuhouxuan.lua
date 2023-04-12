local function filter(input,env)
	local input_text = env.engine.context.input
	local i=1
	local zczt=false --记录组词状态
	for cand in input:iter() do
		if (input_text:find"^a.*$" or input_text:find"^[a-zA-Z1|+|-|=)(,./:;?!']+'[a-zA-Z1|+|-|=)(,./:;?!']+")== 1 then
			if i==1 and cand.comment ==" ☯ "then
				zczt=true
				yield(cand)
			elseif not zczt then
				yield(cand)
			end
		else
			yield(cand)
		end
		i=i+1
	end--for
end
return { func = filter }
