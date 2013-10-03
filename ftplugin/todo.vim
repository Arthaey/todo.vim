" Vim filetype plugin
" Language: TODO
" Maintainer: Arthaey Angosii <arthaey@gmail.com>
" Latest Revision: 3 October 2013

" Only do this when not done yet for this buffer
if (exists("b:did_ftplugin"))
  finish
endif

nmap * ^cf TODO*- <Esc>/TODO\*<CR>
nmap 1 ^cf TODO1- <Esc>
nmap 2 ^cf TODO2- <Esc>
nmap 3 ^cf TODO3- <Esc>
nmap 0 ^cf TODO- <Esc>
nmap _ ^cf - <Esc>:s/\v\s+(OVER)?DUE.*//<CR>/aoeu/e<CR>

" increment all due dates up one week
nmap + mz:%s/DUE \(Mon\\|Tue\\|Wed\\|Thu\\|Fri\)!\?/OVERDUE/eg<CR>:%s/week+1/Fri/eg<CR>:%s/week+2/week+1/eg<CR>:%s/week+3/week+2/eg<CR>:%s/week+4/week+3/eg<CR>:%s/week+5/week+4/eg<CR>:%s/week+6/week+5/eg<CR>:%s/week+7/week+6/eg<CR>:%s/week+8/week+7/eg<CR>:%s/week+9/week+8/eg<CR>/aoeu/e<CR>'z

" This commented-out code exists for ease of modifying the lines separately.
" Copy-paste and combine them back into one line as needed.
"
"nmap + mz:%s/DUE \(Mon\\|Tue\\|Wed\\|Thu\\|Fri\)!\?/OVERDUE/eg<CR>
":%s/week+1/Fri/eg<CR>
":%s/week+2/week+1/eg<CR>
":%s/week+3/week+2/eg<CR>
":%s/week+4/week+3/eg<CR>
":%s/week+5/week+4/eg<CR>
":%s/week+6/week+5/eg<CR>
":%s/week+7/week+6/eg<CR>
":%s/week+8/week+7/eg<CR>
":%s/week+9/week+8/eg<CR>
"/aoeu/e<CR>'z

fun! UpdateOverdueTasks()
  let today=strftime("%u")

  " does not support weekends; working on weekends is sad :(
  let dow1="Mon"
  let dow2="Tue"
  let dow3="Wed"
  let dow4="Thu"
  let dow5="Fri"

  if today >= 1
    silent! %s/DUE Mon$/DUE Mon!/
  endif
  if today >= 2
    silent! %s/DUE Tue$/DUE Tue!/
  endif
  if today >= 3
    silent! %s/DUE Wed$/DUE Wed!/
  endif
  if today >= 4
    silent! %s/DUE Thu$/DUE Thu!/
  endif
  if today >= 5
    silent! %s/DUE Fri$/DUE Fri!/
  endif
endfun

" flag all overdue-this-week tasks to have "!" at the end of the line
nmap ! :call UpdateOverdueTasks()<CR>
