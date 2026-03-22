" Gerenciador de plugins para o vim
" $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" Depois de colocar o nome dos plungs la embaixo eh so dar :PlugInstall

" Temas -------------------------------------------------------------
" Para escolher um tema entre no github dele e depois em colors/ em seguida vc
" vai ver o codigo do tema .vim clica nele e procure um botao escrito raw e
" copie a URL dele
"
" # Baixar e salvar no lugar certo
" curl -fLo ~/.vim/colors/everforest.vim --create-dirs \
"    https://raw.githubusercontent.com/sainnhe/everforest/master/colors/everforest.vim"
"
" se for com outro so trocar a url do raw
"
" se for so curl puro entre nesse dict e de o comando
" na verdade da curl -o nome_do_tema.vim ...
" entre em .vim/colors/

" defina o tema como default
" colorscheme nome_do_tema
colorscheme everforest

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

" Mostra numero de linhas
set number

" Define recuo como 4 espacos
set shiftwidth=4

set tabstop=4

set expandtab

set nobackup

set incsearch

set smartcase

set showcmd

set showmode

set showmatch

set hlsearch

set history=1000

set wildmenu

set wildmode=list:longest

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" ========================= Plugins =======================================

call plug#begin('~/.vim/plugged')

Plug 'prabirshrestha/vim-lsp' " plugin para as LSPs
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'


call plug#end()


" LINHA DE STATUS ----------------------------------------------------------

" Limpa a barra de status quando o vimrc é recarregado.
set statusline=

" Lado esquerdo da barra de status.
set statusline+=\ %F\ %M\ %Y\ %R

" Utiliza um divisor para separar o lado esquerdo do lado direito.
set statusline+=%=

" Lado direito da barra de status.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Mostra a barra de status na penúltima linha.
set laststatus=2

" =========== LSP =================


if executable('gopls')
	au User lsp_setup call lsp#register_server({
		\ 'name': 'gopls',
		\ 'cmd': {server_info->['gopls']},
		\ 'allowlist': ['go'],	
		\ })
endif

if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd', '--background-index']},
        \ 'allowlist': ['c', 'cpp'],
        \ })
endif

