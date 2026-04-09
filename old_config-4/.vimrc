" Desabilitar a compatibilidade com o vi, que pode causar problemas
set nocompatible

" Ativar a deteccao do tipo do arquivo
filetype on

" Habilitar plug-ins e carregar o correspondente ao tipo do arquivo
filetype plugin on

" Carregar um arquivo de identacao correspondente ao tipo detectado
filetype indent on

" Habilitar sintaxe
syntax on

" auto identacao
set autoindent

" Mostra numero de linhas
set number

" habilitar o clique do mouse aqui no vim
set mouse=a

" destaca a linha atual onde o cursor esta
set cursorline

" mostra no titulo do terminal qual o arquivo esta aberto com o vim
set title

set encoding=utf-8

" Define recuo como 4 espacos
set shiftwidth=4

" define que um tab ocupa 4 espacos visualmente
set tabstop=4

" converte um tab em espacos
set expandtab

" desativa a criacao de arquivos de backup que o vim faz
set nobackup

" conforme voce busca por palavras o vim ja mostra os resultados em tempo real
set incsearch

" torna a busca 'igual' quando as palavras tem letras maiusculas e minusculas
set smartcase

" destaca todas as correspondencias quando voce estiver buscando alguma palavra
set hlsearch

" Mostra comandos parciais no canto inferior direito enquanto você digita. Ex: se você digitar dd, aparece d antes de completar o comando.
set showcmd

" mostra o modo atual, insercao, visual, etc
set showmode

" quando o cursor estiver em um dos [ { etc ele mostra o seu par correspondente 
set showmatch

" faz com que o vim lembre dos 1000 comandos usados com o : (historico kkkk)
set history=1000

" ativa um menu de auto-completar quando voce digita por exemplo :e e aperta tab mostra opcoes
set wildmenu

" configura o comportamento do auto-completar longest -> tenta mostrar todas as opcoes, list -> mostra em forma de lista
set wildmode=list:longest

" ignora esses arquivos no wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" ========================= Plugins =======================================

call plug#begin('~/.vim/plugged')

Plug 'prabirshrestha/vim-lsp' " plugin para as LSPs
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'

Plug 'neoclide/coc.nvim', {'branch':'release'}

Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" esse aqui funciona junto do de cima
Plug 'ervandew/supertab'

" auto complete pros () {} [] etc
Plug 'jiangmiao/auto-pairs'

" tema
Plug 'sainnhe/everforest'
call plug#end()


" LINHA DE STATUS ----------------------------------------------------------

" Limpa a barra de status quando o vimrc é recarregado.
set statusline=

" Lado esquerdo da barra de status.
set statusline+=\ %F\ %M\ %Y\ %R

" Utiliza um divisor para separar o lado esquerdo do lado direito.
set statusline+=%=

" Lado direito da barra de status.
set statusline+=ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Mostra a barra de status na penúltima linha.
set laststatus=2

" ======================= tema ===========
colorscheme everforest
"=========== LSP =================
" config utilsnips
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" ---------------------------------
" config for assembly (NASM)
" disable all linters for 'asm' filetype
" I dont use LSP ou anything to code in asm
let g:ale_linters = {}
let g:ale_linters.asm = []

" ==== coc-clangd
" C/C++: coc-clangd

" golang: coc-go gopls

" java: coc-java (Eclipse JDT Language Server

" rust: coc-rust-analyzer  rust-analyzer

" html: coc-html

" css: coc-css

"JavaScript / TypeScript: coc-tsserver

let g:coc_global_extensions = ['coc-clangd', 'coc-go', 'coc-java', 'coc-rust-analyzer', 'coc-html', 'coc-css', 'coc-tsserver']
