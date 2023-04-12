local function filter(input)
    for cand in input:iter() do
        if cand.text ~= '' and cand.text ~= '' then
            yield(cand)
        end
    end
end

return { func = filter }