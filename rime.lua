--[[
librime-lua 样例
```
  engine:
    translators:
      - lua_translator@lua_function3
      - lua_translator@lua_function4
    filters:
      - lua_filter@lua_function1
      - lua_filter@lua_function2
```
其中各 `lua_function` 为在本文件所定义变量名。
--]]

--[[
本文件的后面是若干个例子，按照由简单到复杂的顺序示例了 librime-lua 的用法。
每个例子都被组织在 `lua` 目录下的单独文件中，打开对应文件可看到实现和注解。

各例可使用 `require` 引入。
```
  foo = require("bar")
```
可认为是载入 `lua/bar.lua` 中的例子，并起名为 `foo`。
配方文件中的引用方法为：`...@foo`。
--]]

-- date_translator: 将 `date` 翻译为当前日期
-- 详见 `lua/date.lua`:
date_translator = require("date")

-- time_translator: 将 `time` 翻译为当前时间
-- 详见 `lua/time.lua`
time_translator = require("time")



-- single_char_filter: 候选项重排序，使单字优先
-- 详见 `lua/single_char.lua`
-- single_char_filter = require("single_char")


-- xkjd6_filter: 单字模式 & 630 即 ss 词组提示
--- 修改自 @懒散 TsFreddie https://github.com/TsFreddie/jdc_lambda/blob/master/rime/lua/xkjdc_sbb_hint.lua
-- 可由 schema 的 danzi_mode 与 wxw_hint 开关控制
-- 详见 `lua/xkjd6_filter.lua`
xkjd6_filter = require("xkjd6_filter")

-- 顶功处理器
topup_processor = require("for_topup")

-- 声笔笔简码提示 | 顶功提示 | 补全处理
hint_filter = require("for_hint")

-- number_translator: 将 `=` + 阿拉伯数字 翻译为大小写汉字
-- 详见 `lua/number.lua`
number_translator = require("xnumber")

-- 用 ' 作为次选键
smart_2 = require("smart_2")

shuzi = require("shuzi")

jisuanqi = require("jisuanqi")

houxuanguolv = require("houxuanguolv")

shijian = require("shijian")

shijian2 = require("shijian2")


xuanchonglishi = require("xuanchonglishi")

xuanchongjsq = require("xuanchongjsq")

--xuanchongaeuio = require("xuanchongaeuio")

xuanchongaeuio2 = require("xuanchongaeuio2")

bucixuansanma = require("bucixuansanma")

zhumatishikaiguan = require("zhumatishikaiguan")


--xuanchongaeuio = require("xuanchongaeuio")


xuanchongeuioa53 = require("xuanchongeuioa53")


bucixuan53 = require("bucixuan53")


zaocimoshishangping = require("zaocimoshishangping")

zaocimoshiquchuduoyuhouxuan = require("zaocimoshiquchuduoyuhouxuan")

zaocimoshifencijianchakandaidingci = require("zaocimoshifencijianchakandaidingci")


-- zztest = require("zztest")
---[[
local M= require("HXCL")
get_date = M.getdate
--jpcharset_filter = M.jpcharsetfilter
--long_word_filter = M.longwordfilter
--autocap_filter =M.autocapfilter
oo_processor = M.ooprocessor
oo_filter =M.oofilter
--]]
