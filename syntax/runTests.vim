" Vim syntax file
" For CS350 os161 results printed in runTests.log
" Maintainer: Saman Barghi
" Latest Revision: 9 February 2016

if exists("b:current_syntax")
  finish
endif

if !exists('main_syntax')
    let main_syntax = 'runTests'
endif

set iskeyword="@,48-58,_"

syn match params		/".*" =/me=e-2
syn match qTitle	  	/Using parameters/ nextgroup=params skipwhite
syn match qBlockStart 	/^=\{9,\}.*=$/ contains=qTitle
syn match qBlockEnd   	/^#\{9,\}#$/


syn match os161 /Shutting down/
syn match os161 /The system is halted/

syn match VarType /\(Simulation:\|vehicles, average\)/ nextgroup=VarName skipwhite
syn match VarName '\S\+' contained

syn match success /^.*SUCCEEDED.*$/
syn match success /^.*test done.*$/
syn match success /Passed/
syn match success /OS\/161 kernel: q/

syn match errors /.*panic.*$/
syn match errors /.*failed.*$/
syn match errors /.*FAILED.*$/


let b:current_syntax = "runTests"

hi Success ctermfg=Green	ctermbg=Black
hi Parameters ctermfg=Blue 	ctermbg=Black

hi def link os161			Success
hi def link success			Success
hi def link errors  		Error
hi def link qTitle			Title
hi def link params		 	Statement
hi def link qBlockStart  	Title
hi def link qBlockEnd    	Title
hi def link quit			Quit
hi def link VarName			Statement
