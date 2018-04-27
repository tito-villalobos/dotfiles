"let g:ale_completion_enabled = 1
"call ale#linter#Define('clojure', {
"\   'name': 'cljlint',
"\   'output_stream': 'stdout',
"\   'executable': 'cljlint',
"\   'command': 'cljlint %t',
"\   'callback': 'ale#handlers#unix#HandleAsError',
"\})
