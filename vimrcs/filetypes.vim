
"" language servers

" python
if executable('jedi-language-server')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'jedi-language-server',
                \ 'cmd': {server_info->['jedi-language-server']},
                \ 'whitelist': ['python'],
                \ })
endif

" sh
if executable('bash-language-server')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'bash-language-server',
                \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
                \ 'whitelist': ['sh'],
                \ })
endif

" typescript
if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'typescript-language-server',
                \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
                \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
                \ 'whitelist': ['typescript', 'typescript.tsx', 'typescriptreact'],
                \ })
endif

