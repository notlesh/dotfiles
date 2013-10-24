" _memberVariables
syn match memVars /\<[gs]\{0,1\}_[a-zA-Z0-9]*\>/ "containedin=ALLBUT,javaComment,javaLineComment,javaDocComment,javaCommentTitle,javaString
hi memVars ctermfg=243

" syn match cppPointer \(->\|[a-zA-Z0-9]\*\)
syn match cppPointer "->"
highlight cppPointer ctermfg=yellow guifg=yellow

syn match aver "\<aver\>"
highlight aver ctermfg=brown guifg=brown

syn keyword cType			i8 ui8 i16 ui16 i32 ui32 i64 ui64 f32 f64

" highlight tolua_export
syn match toluaExport "// tolua_export\|// tolua_begin\|// tolua_end"
highlight toluaExport ctermfg=13 guifg=13

syn keyword constant nullptr
