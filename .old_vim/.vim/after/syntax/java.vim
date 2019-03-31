" camel case classes
syn match imClass /\<[A-Z][a-z0-9_]\w*\>/ containedin=ALLBUT,javaComment,javaLineComment,javaDocComment,javaCommentTitle,javaString
hi imClass ctermfg=227

" exceptions
syn match imExceptions /\<\w*Exception\>/ containedin=ALLBUT,javaComment,javaLineComment,javaDocComment,javaCommentTitle,javaString
syn match imExceptions /\<\w*Error\>/ containedin=ALLBUT,javaComment,javaLineComment,javaDocComment,javaCommentTitle,javaString
syn keyword imExceptions Exception containedin=ALLBUT,javaComment,javaLineComment,javaDocComment,javaCommentTitle,javaString
syn keyword imExceptions Throwable containedin=ALLBUT,javaComment,javaLineComment,javaDocComment,javaCommentTitle,javaString

:hi javaExceptions ctermfg=124
:hi javaConditional ctermfg=127
:hi javaRepeat ctermfg=127
:hi javaStatement ctermfg=202
:hi javaScopeDecl ctermfg=41

hi javaX_JavaLang ctermfg=204

" _memberVariables
syn match memVars /\<_[a-zA-Z0-9]*\>/ containedin=ALLBUT,javaComment,javaLineComment,javaDocComment,javaCommentTitle,javaString
hi memVars ctermfg=243

" set slight blue hint on java comment background
" FAIL!
" hi javaComment ctermbg=234
" hi javaCommentStar ctermbg=234
" hi javaLineComment ctermbg=234
" hi javaDocComment ctermbg=234
" hi javaCommentTitle ctermbg=234
" hi javaDocTags ctermbg=234
" hi javaDocParam ctermbg=234
" hi javaDocSeeTag ctermbg=234
" hi javaDocSeeTagParam ctermbg=234
