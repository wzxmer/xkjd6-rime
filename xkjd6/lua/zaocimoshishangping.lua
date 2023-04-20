local KEYS = "space"

local function processor(key_event, env)
    local engine = env.engine
    local schema = engine.schema
    local context = engine.context
    local input_text = env.engine.context.input
   if (input_text:find"^a[a-zA-Z|+|-|=)(,.:?!'][a-zA-Z1|+|-|=)(,./:;?!']+[1;']$" or input_text:find"^[a-zA-Z1|+|-|=)(,./:;?!']+'[a-zA-Z1|+|-|=)(,./:;?!']*[1;']$" or input_text:find"^[a-z]+'$")== 1 then
	if key_event:repr() == KEYS and context:select(0) then
		context:commit()
		return 1
	else
		return 2
	end

    if not env.engine.context:get_selected_candidate() then
        context:clear()
    else
        context:commit()
    end
    return 2
  end
end

return { func = processor }
