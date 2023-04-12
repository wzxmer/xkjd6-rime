local KEYSE = "semicolon"
local KEYSL = "slash"
local KEYAP = "apostrophe"

local function processor(key_event, env)
    local engine = env.engine
    local schema = engine.schema
    local context = engine.context
    local input_text = env.engine.context.input
  if input_text:sub(1,1)==";" then
	if key_event:repr() == KEYSE and context:select(1) then
		context:commit()
		return 1
	elseif key_event:repr() == KEYSL and context:select(2) then
		context:commit()
		return 1
	elseif key_event:repr() == KEYAP and context:select(3) then
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

