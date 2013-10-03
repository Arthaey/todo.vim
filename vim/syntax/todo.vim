" Vim syntax file
" Language: TODO
" Maintainer: Arthaey Angosii <arthaey@gmail.com>
" Latest Revision: 3 October 2013

if exists("b:current_syntax")
  finish
endif


" define syntax
syn match heading     "^[A-Z].*:$"
syn match commentsSA  "\s*// .*" " standalone
syn match comments    "\s*// .*" contained
syn match notice      "===\+ .* ===\+"
syn match overdue     "OVERDUE" contained
syn match deadline    "\( \)\@<=\(DUE\|ON\) .*[^!]$" contained
syn match deadline0   "\( \)\@<=\(DUE\|ON\) .*!$" contained
syn match deadline1   "\( \)\@<=\(DUE\|ON\) .*week+1.*$" contained
syn match deadline2   "\( \)\@<=\(DUE\|ON\) .*week+2.*$" contained
syn match deadline3   "\( \)\@<=\(DUE\|ON\) .*week+[3-9].*$" contained
syn match blocked     "\[BLOCKED\]" contained
syn match submitted   "\[SUBMITTED\]" contained
syn match pending     "\[\(PENDING\|OUT FOR REVIEW\)\]" contained
syn match inProgress  "\[IN PROGRESS\]" contained
syn match done        "\s*- .*" contains=overdue,deadline,deadline0,deadline1,deadline2,deadline3,blocked,submitted,pending,inProgress,comments,bug,cl,ocl,go

syn match todoNoPri   "TODO- .*"   contains=overdue,deadline,deadline0,deadline1,deadline2,deadline3,blocked,submitted,pending,inProgress,comments,cl,ocl,go
syn match todo1Pri    "TODO1- .*"  contains=overdue,deadline,deadline0,deadline1,deadline2,deadline3,blocked,submitted,pending,inProgress,comments,cl,ocl,go
syn match todo2Pri    "TODO2- .*"  contains=overdue,deadline,deadline0,deadline1,deadline2,deadline3,blocked,submitted,pending,inProgress,comments,cl,ocl,go
syn match todo3Pri    "TODO3- .*"  contains=overdue,deadline,deadline0,deadline1,deadline2,deadline3,blocked,submitted,pending,inProgress,comments,cl,ocl,go
syn match todoCurrent "TODO\*- .*" contains=overdue,deadline,deadline0,deadline1,deadline2,deadline3,blocked,submitted,pending,inProgress,comments,cl,ocl,go

syn match bug "[bB]/\d\+" contained
syn match cl "\(cl\|CL\)/\d\+" contained
syn match ocl "\(cl\|CL\)/\d*\*" contained
syn match go "go/[A-Za-z0-9_-]\+" contained


" set filetype
let b:current_syntax = "todo"


" define custom types & colors
highlight Normal       cterm=none    ctermfg=16  ctermbg=229 gui=none    guifg=#000000 guibg=#ffffaf
highlight NonText      cterm=none    ctermfg=229 ctermbg=229 gui=none    guifg=#ffffaf guibg=#ffffaf
highlight Cursor                                 ctermbg=16                            guibg=#000000
highlight clear CursorLine

highlight Heading      cterm=bold,underline ctermfg=28 ctermbg=229 gui=bold,underline guifg=#008700 guibg=#ffffaf
highlight Done         cterm=none    ctermfg=16  ctermbg=229 gui=none    guifg=#000000 guibg=#ffffaf
highlight CommentsSA   cterm=none    ctermfg=250 ctermbg=229 gui=none    guifg=#87af87 guibg=#ffffaf
highlight Comments     cterm=none    ctermfg=250 ctermbg=229 gui=none    guifg=#87af87 guibg=#ffffaf
highlight Notice       cterm=none    ctermfg=231 ctermbg=88  gui=none    guifg=#ffffff guibg=#870000
highlight Overdue      cterm=none    ctermfg=226 ctermbg=196 gui=none    guifg=#ffff00 guibg=#ff0000
highlight Deadline     cterm=none    ctermfg=231 ctermbg=196 gui=none    guifg=#ff0000 guibg=#ffffaf
highlight Deadline0    cterm=none    ctermfg=231 ctermbg=196 gui=none    guifg=#ffffff guibg=#ff0000
highlight Deadline1    cterm=none    ctermfg=16  ctermbg=71  gui=none    guifg=#000000 guibg=#5faf5f
highlight Deadline2    cterm=none    ctermfg=16  ctermbg=150 gui=none    guifg=#000000 guibg=#afd787
highlight Deadline3    cterm=none    ctermfg=16  ctermbg=193 gui=none    guifg=#000000 guibg=#d7ffaf
highlight Blocked      cterm=none    ctermfg=231 ctermbg=196 gui=none    guifg=#ffffff guibg=#ff0000
highlight Submitted    cterm=none    ctermfg=69  ctermbg=229 gui=none    guifg=#5f87ff guibg=#ffffaf
highlight Pending      cterm=none    ctermfg=81  ctermbg=229 gui=none    guifg=#5fffff guibg=#ffffaf
highlight InProgress   cterm=none    ctermfg=250 ctermbg=229 gui=none    guifg=#87af87 guibg=#ffffaf

highlight TodoNoPri    cterm=none    ctermfg=244 ctermbg=229 gui=none    guifg=#808080 guibg=#ffffaf
highlight Todo1Pri     cterm=none    ctermfg=196 ctermbg=229 gui=none    guifg=#ff0000 guibg=#ffffaf
highlight Todo2Pri     cterm=none    ctermfg=202 ctermbg=229 gui=none    guifg=#ff5f00 guibg=#ffffaf
highlight Todo3Pri     cterm=none    ctermfg=220 ctermbg=229 gui=none    guifg=#ffaf00 guibg=#ffffaf
highlight TodoCurrent  cterm=none    ctermfg=202 ctermbg=184 gui=none    guifg=#ffff00 guibg=#d7d700

highlight Bug    cterm=none    ctermfg=124 ctermbg=229 gui=none    guifg=#af0000 guibg=#ffffaf
highlight CL     cterm=none    ctermfg=231 ctermbg=69  gui=none    guifg=#ffffff guibg=#5f87ff
highlight OCL    cterm=none    ctermfg=231 ctermbg=81  gui=none    guifg=#ffffff guibg=#5fffff
highlight Go     cterm=none    ctermfg=18  ctermbg=229 gui=none    guifg=#000087 guibg=#ffffaf

highlight Folded       cterm=italic  ctermfg=16  ctermbg=229 gui=italic  guifg=#808080 guibg=#ffffaf
highlight Search       cterm=bold    ctermfg=226 ctermbg=28  gui=bold    guifg=#ffff00 guibg=#008700

" define color highlighting
hi def link heading Heading
hi def link done Done
hi def link comments CommentsSA
hi def link comments Comments
hi def link notice Notice
hi def link overdue Overdue
hi def link deadline Deadline
hi def link deadline1 Deadline1
hi def link deadline2 Deadline2
hi def link deadline3 Deadline3
hi def link blocked Blocked
hi def link submitted Submitted
hi def link pending Pending
hi def link inProgress InProgress

hi def link todoNoPri TodoNoPri
hi def link todo1Pri Todo1Pri
hi def link todo2Pri Todo2Pri
hi def link todo3Pri Todo3Pri
hi def link todoCurrent TodoCurrent

hi def link bug Bug
hi def link cl CL
hi def link ocl OCL
hi def link go Go
