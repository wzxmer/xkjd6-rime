local KEYEE = "e"
local KEYUU = "u"
local KEYII = "i"
local KEYOO = "o"
local KEYAA = "a"

local function processor(key_event, env)
    local engine = env.engine
    local schema = engine.schema
    local context = engine.context
    local input_text = env.engine.context.input
  if input_text:sub(1,1)=="=" then
	if key_event:repr() == KEYEE and context:select(0) then
		context:commit()
		return 1
	elseif key_event:repr() == KEYUU and context:select(1) then
		context:commit()
		return 1
	elseif key_event:repr() == KEYII and context:select(2) then
		context:commit()
		return 1
	elseif key_event:repr() == KEYOO and context:select(3) then
		context:commit()
		return 1
	elseif key_event:repr() == KEYAA and context:select(4) then
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
