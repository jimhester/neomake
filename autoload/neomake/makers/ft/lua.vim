function! neomake#makers#ft#lua#EnabledMakers() abort
    return executable('luacheck') ? ['luacheck'] : ['luac']
endfunction

function! neomake#makers#ft#lua#luacheck() abort
    " cwd: luacheck looks for .luacheckrc upwards from there.
    return {
        \ 'args': ['--no-color', '--formatter=plain', '--codes'],
        \ 'cwd': '%:p:h',
        \ 'errorformat': '%f:%l:%c: \(%t%n\) %m',
        \ }
endfunction

function! neomake#makers#ft#lua#luac() abort
    return {
        \ 'args': ['-p'],
        \ 'errorformat': 'luac: %f:%l: %m',
        \ }
endfunction
