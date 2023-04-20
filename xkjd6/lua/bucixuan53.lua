--[[
--声形二码不上屏

local function filter(input, env)
  local engine = env.engine
  local context = engine.context
  local input_text = context.input
  for cand in input:iter() do
    if (input_text:find"^[qwrtypsdfghjklzxcvbnm][aeiou]$")== 1 then
      cand:get_genuine().type="completion"
      yield(cand)
    else
      yield(cand)
    end
  end
end
return { func = filter }
--]]
---[[
-- 补次选
function filter(input, env)
local count = 0
local input_text = env.engine.context.input
for cand in input:iter() do
yield(cand) -- 生成这个候选
count = count + 1
end
if (input_text:find"^[qwrtypsdfghjklzxcvbnm][aeiou]$")== 1 and count == 3 then
local _end = env.engine.context.input:len()
local cand = Candidate('补次选（随便写）', 0, _end, '', '')
yield(cand)
end
end
return { func = filter }
--]]

