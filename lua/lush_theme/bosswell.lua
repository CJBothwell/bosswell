--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl


-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym

  local dark_gray =     hsl("#303030")
  local darker_gray =   hsl("#202020")
  local mid_gray =      hsl("#878787")
  local default_white = hsl("#FFFFFF")
  
  local lavender =     hsl("#dfafff")
  local light_purple = hsl("#ffdfff")
  local gray_purple =  hsl("#afafd7")

  local pink =         hsl("#ffafdf")
  local light_blue =   hsl("#afffff")
  local mint =         hsl("#afffd7")
  local light_yellow = hsl("#ffffaf")

  local dark_pink =  hsl("#ff005f")
  local dark_green = hsl("#00875f")
  local dark_blue =  hsl("#0087af")

  return {
    
    Normal { fg=default_white, bg=dark_gray },
    Cursor { fg=dark_gray, bg=default_white },
    Visual { bg=mid_gray }, 
    CursorLine { bg=dark_gray }, 
    CursorColumn { bg=dark_gray }, 
    ColorColumn { bg=dark_gray }, 
    LineNr { fg=mid_gray, bg=dark_gray }, 
    VertSplit { fg=mid_gray, bg=dark_gray }, 
    MatchParen { fg=pink }, 
    StatusLine { fg=default_white, bg=darker_gray }, 
    StatusLineNC { fg=default_white, bg=darker_gray }, 
    Pmenu { bg=dark_gray }, 
    PmenuSel { fg=lavender, bg=mid_gray }, 
    IncSearch { fg=dark_gray, bg=light_yellow }, 
    Search { }, 
    Directory { fg=lavender }, 
    Folded { fg=light_yellow, bg=dark_gray }, 
    TabLine { fg=default_white, bg=dark_gray }, 
    TabLineSel { fg=light_purple, bg=dark_gray }, 
    TabLineFill { fg=default_white, bg=dark_gray }, 
                                                          
    Define { fg=gray_purple }, 
    DiffAdd { fg=default_white, bg=dark_green, gui="bold" },
    DiffDelete { fg=dark_pink }, 
    DiffChange { fg=default_white, bg=dark_gray }, 
    DiffText  { fg=default_white, bg=dark_blue, gui="bold" },
    ErrorMsg { fg=default_white, bg=dark_pink }, 
    WarningMsg { fg=default_white, bg=dark_pink }, 
                                                          
    Boolean { fg=lavender }, 
    Character { fg=lavender }, 
    Comment { fg=gray_purple }, 
    Conditional { fg=pink }, 
    Constant { fg=mint }, 
    Float { fg=lavender }, 
    Function { fg=light_purple }, 
    Identifier { fg=light_purple }, 
    Keyword { fg=pink }, 
    Label { fg=light_yellow }, 
    NonText { fg=default_white }, 
    Number { fg=mint }, 
    Operator { fg=pink }, 
    PreProc { fg=pink }, 
    Special { fg=light_purple }, 
    SpecialKey { fg=default_white, bg=dark_gray }, 
    Statement { fg=pink }, 
    SpellBad { fg=pink, gui="underline" },
    SpellCap { fg=light_blue, gui="underline" },
    StorageClass { fg=mint  }, 
    String { fg=light_blue }, 
    Tag { fg=pink }, 
    Title { fg=default_white, gui="bold" },
    Todo  {fg=light_yellow, gui="inverse,bold" },
    Type { fg=mint }, 
    Underlined { gui="underline" },

    Delimiter { fg=light_blue },
    Macro { Define },
    SpecialChar { fg=lavender },
    Repeat {fg=lavender},
    Exception {fg=mint},
    Typedef {fg=lavender},
    Structure {fg=pink},
    Include {fg=pink},
    Debug {fg=light_yellow},
                                                      
-- rubyClass, s:pink, s:none, "NONE")
-- rubyFunction, s:light_purple, s:none, "NONE")
-- rubyInterpolationDelimiter", s:none, s:none, "NONE")
-- rubySymbol", s:light_purple, s:none, "NONE")
-- rubyConstant", s:mint, s:none, "NONE")
-- rubyStringDelimiter", s:light_blue, s:none, "NONE")
-- rubyBlockParameter", s:pink, s:none, "NONE")
-- rubyBlock", s:default_white, s:none, "NONE")
-- rubyInstanceVariable", s:pink, s:none, "NONE")
-- rubyInclude", s:pink, s:none, "NONE")
-- rubyGlobalVariable", s:light_yellow, s:none, "NONE")
-- rubyRegexp", s:light_yellow, s:none, "NONE")
-- rubyRegexpDelimiter", s:light_yellow, s:none, "NONE")
-- rubyEscape", s:lavender, s:none, "NONE")
-- rubyControl", s:lavender, s:none, "NONE")
-- rubyRepeat", s:lavender, s:none, "NONE")
-- rubyConditional", s:pink, s:none, "NONE")
-- rubyClassVariable", s:light_yellow, s:none, "NONE")
-- rubyOperator", s:pink, s:none, "NONE")
-- rubyException", s:mint, s:none, "NONE")
-- rubyPseudoVariable", s:mint, s:none, "NONE")
-- rubyRailsUserClass", s:mint, s:none, "NONE")
-- rubyRailsARAssociationMethod", s:mint, s:none, "NONE")
-- rubyRailsARMethod", s:mint, s:none, "NONE")
-- rubyRailsRenderMethod", s:mint, s:none, "NONE")
-- rubyRailsMethod", s:mint, s:none, "NONE")
-- rubyArrayDelimiter", s:pink, s:none, "NONE")
-- rubyInterpolation", s:light_purple, s:none, "NONE")
-- rubyInterpolationDelimiter", s:pink, s:none, "NONE")
                                                      
-- erubyDelimiter", s:none, s:none, "NONE")
-- erubyRailsMethod", s:mint, s:none, "NONE")
                                                      
-- htmlTag", s:none, s:none, "NONE")
-- htmlEndTag", s:none, s:none, "NONE")
-- htmlTagName", s:none, s:none, "NONE")
-- htmlArg", s:none, s:none, "NONE")
-- htmlSpecialChar", s:lavender, s:none, "NONE")
                                                      
-- javaScriptFunction", s:mint, s:none, "NONE")
-- javaScriptRailsFunction", s:mint, s:none, "NONE")
-- javaScriptBraces", s:none, s:none, "NONE")
                                                      
-- yamlKey", s:pink, s:none, "NONE")
-- yamlAnchor", s:none, s:none, "NONE")
-- yamlAlias", s:none, s:none, "NONE")
-- yamlDocumentHeader", s:light_yellow, s:none, "NONE")
-- yamlPlainScalar", s:light_blue, s:none, "NONE")
-- yamlBlockCollectionItemStart", s:pink, s:none, "NONE")
                                                      
-- cssURL", s:dark_pink, s:none, "NONE")
-- cssFunctionName", s:mint, s:none, "NONE")
-- cssColor", s:lavender, s:none, "NONE")
-- cssPseudoClassId", s:light_yellow, s:none, "NONE")
-- cssClassName", s:light_yellow, s:none, "NONE")
-- cssValueLength", s:lavender, s:none, "NONE")
-- cssCommonAttr", s:mint, s:none, "NONE")
-- cssBraces", s:none, s:none, "NONE")
                                                      
-- jsThis", s:pink, s:none, "NONE")
-- jsBraces", s:light_purple, s:none, "NONE")
-- jsGlobalObjects", s:mint, s:none, "NONE")
                                                      
-- coffeeCurly", s:lavender, s:none, "NONE")
-- coffeeObjAssign", s:light_purple, s:none, "NONE")
                                                      
-- cjsxAttribProperty", s:lavender, s:none, "NONE")
                                                      
-- markdownH1", s:light_blue, s:none, "NONE")
-- markdownH2", s:light_blue, s:none, "NONE")
-- markdownH3", s:light_blue, s:none, "NONE")
-- markdownH4", s:light_blue, s:none, "NONE")
-- markdownH5", s:light_blue, s:none, "NONE")
-- markdownH6", s:light_blue, s:none, "NONE")
-- markdownHeadingDelimiter", s:light_blue, s:none, "NONE
-- markdownRule", s:light_blue, s:none, "NONE")
                                                      
-- SyntasticError", s:dark_gray, s:pink, "NONE")
-- SyntasticWarning", s:dark_gray, s:light_blue, "NONE")

    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    -- ColorColumn    { }, -- Columns set with 'colorcolumn'
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor         { }, -- Character under the cursor
    -- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn   { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine     { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory      { }, -- Directory names (and other special names in listings)
    -- DiffAdd        { }, -- Diff mode: Added line |diff.txt|
    -- DiffChange     { }, -- Diff mode: Changed line |diff.txt|
    -- DiffDelete     { }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    -- ErrorMsg       { }, -- Error messages on the command line
    -- VertSplit      { }, -- Column separating vertically split windows
    -- Folded         { }, -- Line used for closed folds
    -- FoldColumn     { }, -- 'foldcolumn'
    -- SignColumn     { }, -- Column where |signs| are displayed
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
    -- LineNr         { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    -- CursorLineNr   { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    -- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg        { }, -- |more-prompt|
    -- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- NormalFloat    { }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    -- Pmenu          { }, -- Popup menu: Normal item.
    -- PmenuSel       { }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    -- Question       { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search         { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLine     { }, -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    -- Title          { }, -- Titles for output from ":set all", ":autocmd" etc.
    -- Visual         { }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg     { }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    -- Comment        { }, -- Any comment

    -- Constant       { }, -- (*) Any constant
    -- String         { }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    -- Identifier     { }, -- (*) Any variable name
    -- Function       { }, --   Function name (also: methods for classes)

    -- Statement      { }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    -- PreProc        { }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    -- Type           { }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    -- Special        { }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    --DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    --DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    --DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    --DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    --DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    --DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    --DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    --DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    --DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    --DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    --DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    --DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    --DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    --DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    --DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    --DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    --DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    --DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    --DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    --DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    --DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    --DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    --DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    --DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    --DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    sym"@text.literal"      { Comment }, -- Comment
    sym"@text.reference"    { Identifier }, -- Identifier
    sym"@text.title"        { Title }, -- Title
    sym"@text.uri"          { Underlined }, -- Underlined
    sym"@text.underline"    { Underlined }, -- Underlined
    sym"@text.todo"         { Todo }, -- Todo
    sym"@comment"           { Comment }, -- Comment
    sym"@punctuation"       {Delimiter    }, -- Delimiter
    sym"@constant"          {Constant     }, -- Constant
    sym"@constant.builtin"  {Special      }, -- Special
    sym"@constant.macro"    {Define       }, -- Define
    sym"@define"            {Define       }, -- Define
    sym"@macro"             {Macro        }, -- Macro
    sym"@string"            {String       }, -- String
    sym"@string.escape"     {SpecialChar  }, -- SpecialChar
    sym"@string.special"    {SpecialChar  }, -- SpecialChar
    sym"@character"         {Character    }, -- Character
    sym"@character.special" {SpecialChar  }, -- SpecialChar
    sym"@number"            {Number       }, -- Number
    sym"@boolean"           {Boolean      }, -- Boolean
    sym"@float"             {Float        }, -- Float
    sym"@function"          {Function     }, -- Function
    sym"@function.builtin"  {Special      }, -- Special
    sym"@function.macro"    {Macro        }, -- Macro
    sym"@parameter"         {Identifier   }, -- Identifier
    sym"@method"            {Function     }, -- Function
    sym"@field"             {Identifier   }, -- Identifier
    sym"@property"          {Identifier   }, -- Identifier
    sym"@constructor"       {Special      }, -- Special
    sym"@conditional"       {Conditional  }, -- Conditional
    sym"@repeat"            {Repeat       }, -- Repeat
    sym"@label"             {Label        }, -- Label
    sym"@operator"          {Operator     }, -- Operator
    sym"@keyword"           {Keyword      }, -- Keyword
    sym"@exception"         {Exception    }, -- Exception
    sym"@variable"          {Identifier   }, -- Identifier
    sym"@type"              {Type         }, -- Type
    sym"@type.definition"   {Typedef      }, -- Typedef
    sym"@storageclass"      {StorageClass }, -- StorageClass
    sym"@structure"         {Structure    }, -- Structure
    sym"@namespace"         {Identifier   }, -- Identifier
    sym"@include"           {Include      }, -- Include
    sym"@preproc"           {PreProc      }, -- PreProc
    sym"@debug"             {Debug        }, -- Debug
    sym"@tag"               {Tag          }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
