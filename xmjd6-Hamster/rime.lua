-- 星猫键道6
-- xmjd6_filter: 单字模式 & 630 即 ss 词组提示
--- 修改自 @懒散 TsFreddie https://github.com/TsFreddie/jdc_lambda/blob/master/rime/lua/xkjdc_sbb_hint.lua
-- 可由 schema 的 danzi_mode 与 wxw_hint 开关控制
-- 详见 `lua/xmjd6_filter.lua`
xmjd6_filter = require("xmjd6_filter")
-- 顶功处理器
xmjdtopup_processor = require("xmjdfor_topup")
-- 声笔笔简码提示 | 顶功提示 | 补全处理
xmjdhint_filter = require("xmjdfor_hint")
-- 用 ' 作为次选键
xmjdsmart_2 = require("xmjdsmart_2")
xmjdshuzi = require("xmjdshuzi")
xmjdjisuanqi = require("xmjdjisuanqi")
xmjdshijian = require("xmjdshijian")