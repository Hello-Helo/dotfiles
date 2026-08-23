-- Define some abbreviations
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node

ls.add_snippets("tex",
  s(
    {trig="mk", snippetType="autosnippet"},
    {t("\\("), i(1), t("\\)")}
  )
)

vim.print(ls)
