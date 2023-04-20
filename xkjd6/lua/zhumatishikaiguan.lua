local function filter(input, env)
    local context = env.engine.context
    local is_completion_on = context:get_option('completion')
    local input_text = context.input
    local has_table = false
    local first = true

    for cand in input:iter() do
        first = false
        if cand.type == 'table' then
            yield(cand)
            has_table = true
        elseif cand.type == 'completion' and (input_text:find"^[a-z;]$" or input_text:find"[qwrtypsdfghjklzxcvbnm][a-z]")== 1 then

            if is_completion_on then
                yield(cand)
            elseif not has_table then
                yield(cand)
                return
            else
                return
            end
        else
            yield(cand)
        end
    end
end


return { func = filter }
