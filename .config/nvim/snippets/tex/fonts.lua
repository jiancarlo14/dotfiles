local get_visual = function(args, parent)
	if #parent.snippet.env.LS_SELECT_RAW > 0 then
		return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
	else -- If LS_SELECT_RAW is empty, return a blank insert node
		return sn(nil, i(1))
	end
end

local function math()
	return vim.api.nvim_eval("vimtex#syntax#in_mathzone()") == 1
end

return {

	-- MONOSPACED FONT
	s(
		{ trig = "tt", snippetType = "snippet" },
		fmta(
			[[
    \texttt{<>}<>
    ]],
			{
				d(1, get_visual),
				i(0),
			}
		)
	),

	-- ITALIC FONT
	s(
		{ trig = "it", snippetType = "snippet" },
		fmta(
			[[
    \textit{<>}<>
    ]],
			{
				d(1, get_visual),
				i(0),
			}
		)
	),

	-- BOLDFACED FONT
	s(
		{ trig = "bf", snippetType = "snippet" },
		fmta(
			[[
    \textbf{<>}<>
    ]],
			{
				d(1, get_visual),
				i(0),
			}
		)
	),

	-- TEXT FONT INSIDE MATH
	s(
		{ trig = '"', snippetType = "autosnippet", condition = math, wordTrig = false, priority = 999 },
		fmta(
			[[
    \text{<>}<>
    ]],
			{
				i(1),
				i(0),
			}
		)
	),

	-- CALIGRAPHY FONT
	s(
		{ trig = "cal", snippetType = "snippet" },
		fmta(
			[[
    \mathcal{<>}<>
    ]],
			{
				d(1, get_visual),
				i(0),
			}
		)
	),

	-- FRAKTUR FONT
	s(
		{ trig = "frak", snippetType = "snippet" },
		fmta(
			[[
    \mathfrak{<>}<>
    ]],
			{
				i(1),
				i(0),
			}
		)
	),

  -- TEXTBREAKS INSIDE MATH ENV
	s(
		{ trig = 'm"', snippetType = "autosnippet", condition = math, priority = 1000 },
		fmta(
			[[
      \intertext{<>}
    ]],
			{
        d(1, get_visual)
			}
		)
	),
}
