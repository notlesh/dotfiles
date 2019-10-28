" specify promptline preset. use the following command to generate the prompt:
" :source ~/.vim/promptline_config.vim
" :PromptlineSnapshot! ~/.promptline.sh jelly
let g:promptline_preset = {
        \'a' : [ promptline#slices#host({ 'only_if_ssh': 1 }) ],
        \'b' : [ '%*', promptline#slices#user() ],
        \'c' : [ promptline#slices#cwd() ],
        \'y' : [ promptline#slices#vcs_branch() ],
        \'warn' : [ promptline#slices#last_exit_code(),
                \ promptline#slices#jobs(),
                \ promptline#slices#battery({ 'threshold': 30 }) ]}
