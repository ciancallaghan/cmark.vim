" {{{ Mathy Stuff
" {{{ Uppercase Greek
syntax keyword cmarkMath Alpha contained conceal cchar=Α
syntax keyword cmarkMath Beta contained conceal cchar=Β
syntax keyword cmarkMath Gamma contained conceal cchar=Γ
syntax keyword cmarkMath Delta contained conceal cchar=Δ
syntax keyword cmarkMath Epsilon contained conceal cchar=Ε
syntax keyword cmarkMath Zeta contained conceal cchar=Ζ
syntax keyword cmarkMath Eta contained conceal cchar=Η
syntax keyword cmarkMath Theta contained conceal cchar=Θ
syntax keyword cmarkMath Iota contained conceal cchar=Ι
syntax keyword cmarkMath Kappa contained conceal cchar=Κ
syntax keyword cmarkMath Lambda contained conceal cchar=Λ
syntax keyword cmarkMath Mu contained conceal cchar=Μ
syntax keyword cmarkMath Nu contained conceal cchar=Ν
syntax keyword cmarkMath Xi contained conceal cchar=Ξ
syntax keyword cmarkMath Omnicron contained conceal cchar=Ο
syntax keyword cmarkMath Pi contained conceal cchar=Π
syntax keyword cmarkMath Rho contained conceal cchar=Ρ
syntax keyword cmarkMath Sigma contained conceal cchar=Σ
syntax keyword cmarkMath Tau contained conceal cchar=Τ
syntax keyword cmarkMath Upsilon contained conceal cchar=Υ
syntax keyword cmarkMath Phi contained conceal cchar=Φ
syntax keyword cmarkMath Chi contained conceal cchar=Χ
syntax keyword cmarkMath Psi contained conceal cchar=Ψ
syntax keyword cmarkMath Omega contained conceal cchar=Ω
" }}} Uppercase Greek
" {{{ Lowercase Greek
syntax keyword cmarkMath alpha contained conceal cchar=α
syntax keyword cmarkMath beta contained conceal cchar=β
syntax keyword cmarkMath gamma contained conceal cchar=γ
syntax keyword cmarkMath delta contained conceal cchar=δ
syntax keyword cmarkMath epsilon contained conceal cchar=ε
syntax keyword cmarkMath zeta contained conceal cchar=ζ
syntax keyword cmarkMath eta contained conceal cchar=η
syntax keyword cmarkMath theta contained conceal cchar=θ
syntax keyword cmarkMath iota contained conceal cchar=ι
syntax keyword cmarkMath kappa contained conceal cchar=κ
syntax keyword cmarkMath lambda contained conceal cchar=λ
syntax keyword cmarkMath mu contained conceal cchar=μ
syntax keyword cmarkMath nu contained conceal cchar=ν
syntax keyword cmarkMath xi contained conceal cchar=ξ
syntax keyword cmarkMath omnicron contained conceal cchar=ο
syntax keyword cmarkMath pi contained conceal cchar=π
syntax keyword cmarkMath rho contained conceal cchar=ρ
syntax keyword cmarkMath sigma contained conceal cchar=σ
syntax keyword cmarkMath tau contained conceal cchar=τ
syntax keyword cmarkMath upsilon contained conceal cchar=υ
syntax keyword cmarkMath phi contained conceal cchar=ϕ
syntax keyword cmarkMath chi contained conceal cchar=χ
syntax keyword cmarkMath psi contained conceal cchar=ψ
syntax keyword cmarkMath omega contained conceal cchar=ω
" }}} Lowercase Greek
" {{{ Superscript
syntax match cmarkMath "\^0" contained conceal cchar=⁰
syntax match cmarkMath "\^1" contained conceal cchar=¹
syntax match cmarkMath "\^2" contained conceal cchar=²
syntax match cmarkMath "\^3" contained conceal cchar=³
syntax match cmarkMath "\^4" contained conceal cchar=⁴
syntax match cmarkMath "\^5" contained conceal cchar=⁵
syntax match cmarkMath "\^6" contained conceal cchar=⁶
syntax match cmarkMath "\^7" contained conceal cchar=⁷
syntax match cmarkMath "\^8" contained conceal cchar=⁸
syntax match cmarkMath "\^9" contained conceal cchar=⁹
" }}} Superscript
" {{{ Subscript
syntax match cmarkMath "_0" contained conceal cchar=₀
syntax match cmarkMath "_1" contained conceal cchar=₁
syntax match cmarkMath "_2" contained conceal cchar=₂
syntax match cmarkMath "_3" contained conceal cchar=₃
syntax match cmarkMath "_4" contained conceal cchar=₄
syntax match cmarkMath "_5" contained conceal cchar=₅
syntax match cmarkMath "_6" contained conceal cchar=₆
syntax match cmarkMath "_7" contained conceal cchar=₇
syntax match cmarkMath "_8" contained conceal cchar=₈
syntax match cmarkMath "_9" contained conceal cchar=₉
" }}} Subscript
" {{{ Fractions
syntax match cmarkMath "1\/2" contained conceal cchar=½
syntax match cmarkMath "1\/4" contained conceal cchar=¼
syntax match cmarkMath "3\/4" contained conceal cchar=¾
syntax match cmarkMath "1\/8" contained conceal cchar=⅛
syntax match cmarkMath "3\/8" contained conceal cchar=⅜
syntax match cmarkMath "5\/8" contained conceal cchar=⅝
syntax match cmarkMath "7\/8" contained conceal cchar=⅞
" }}} Fractions
" {{{ Symbols
syntax match cmarkMath "-+" contained conceal cchar=∓
syntax match cmarkMath "+-" contained conceal cchar=±
syntax match cmarkMath "<=" contained conceal cchar=≤
syntax match cmarkMath ">=" contained conceal cchar=≥
syntax match cmarkMath "!=" contained conceal cchar=≠
syntax match cmarkMath "==" contained conceal cchar=≡
" }}} Symbols
" }}} Mathy Stuff

" {{{ General Conceals
syntax match Normal '<-' conceal cchar=←
syntax match Normal '->' conceal cchar=→
syntax match Normal '<->' conceal cchar=↔
syntax match Normal '<=' conceal cchar=⇐
syntax match Normal '=>' conceal cchar=⇒
syntax match Normal '<=>' conceal cchar=⇔
syntax match Normal '()' conceal cchar=○
syntax match Normal '<>' conceal cchar=◊
syntax match Normal '\[\]' conceal cchar=□
syntax match Normal 'ae' conceal cchar=æ
syntax match Normal 'oe' conceal cchar=œ
" }}} General Conceals

" {{{ Headers
syntax match cmarkHeader /^=\{1,6}\s.*$/ 
			\ contains=@Spell 
" }}} Headers

" {{{ Lists
syntax region cmarkUnorderedList start="^\s*-\s" end="$"
			\ contains=@Spell,cmarkURL,
				\ cmarkBold,cmarkItalic,cmarkBoldItalic,
				\ cmarkInlineCode
syntax region cmarkOrderedList start="^\s*+\s" end="$"
			\ contains=@Spell,cmarkURL,
				\ cmarkBold,cmarkItalic,cmarkBoldItalic,
				\ cmarkInlineCode
" }}} Lists

" {{{ URLs
syntax match cmarkURL /\v\w+:\/\/\S*/
" }}} URLs

" {{{ Inline Markup
" {{{ Bold
syntax region cmarkBold start="\\\@<!\*\%(\d\|\a\)" end="\%(\a\|\d\)\*" skip="\\\*"
			\ contains=@Spell
			\ keepend concealends
" }}} Bold
" {{{ Italic
syntax region cmarkItalic start="\\\@<!_\%(\d\|\a\)" end="\%(\a\|\d\)_" skip="\\_"
			\ contains=@Spell
			\ keepend concealends
" }}} Italic
" {{{ Bold-Italic
syntax region cmarkBoldItalic start="\*_\%(\d\|\a\)" end="\%(\a\|\d\)_\*"
			\ contains=@Spell
			\ keepend concealends
" }}} Bold-Italic
" {{{ Code
syntax region cmarkInlineCode start="\\\@<!{\%(\d\|\a\)" end="\%(\a\|\d\)}" skip="\\\%(<\|>\)"
			\ contains=@Spell
			\ keepend concealends
" }}} Code
" }}} Inline Markup

" {{{ Preformatted Block
syntax region cmarkCodeBlock start="^{{{" end="^}}}"
" }}} Preformatted Block

" {{{ Keywords
syntax region cmarkNOTE start="NOTE:" end="$"
			\ contains=@Spell
syntax region cmarkTODO start="TODO:" end="$"
			\ contains=@Spell
syntax region cmarkWARN start="WARN:" end="$"
			\ contains=@Spell
" }}} Keywords

" {{{ Comments
syntax region cmarkComment start="\\\@<!#" end="$" skip="\\#"
			\ contains=@Spell
" }}} Comments

" {{{ Highlighting
highlight! link cmarkHeader Title
highlight! link cmarkUnorderedList Identifier
highlight! link cmarkOrderedList Identifier
highlight cmarkURL
			\ term=underline
			\ cterm=underline
			\ gui=underline
highlight cmarkBold
			\ term=bold
			\ cterm=bold
			\ gui=bold
highlight cmarkItalic
			\ term=italic
			\ cterm=italic
			\ gui=italic
highlight cmarkBoldItalic
			\ term=bold,italic
			\ cterm=bold,italic
			\ gui=bold,italic
highlight! link cmarkInlineCode Special
highlight! link cmarkCodeBlock Special

highlight cmarkNOTE
			\ ctermfg=darkgreen cterm=underline
			\ guifg=darkgreen gui=underline
highlight cmarkTODO
			\ ctermfg=darkmagenta cterm=underline
			\ guifg=darkmagenta gui=underline
highlight cmarkWARN
			\ ctermfg=darkred cterm=underline
			\ guifg=darkred gui=underline

highlight! link cmarkComment Comment

highlight conceal 
			\ ctermbg=none ctermfg=none 
			\ guibg=none guifg=none
" }}} Highlighting

" vim:foldmethod=marker:foldlevel=0
