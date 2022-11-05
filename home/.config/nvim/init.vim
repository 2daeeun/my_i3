"==========기본 설정값==========
syntax enable			        "구문강조
set encoding=UTF-8		        "한글 깨짐 방지 
set fileencodings=utf-8,cp949
set termguicolors		        "트루 컬러 지원
set number                      "라인 넘버 표시(set nu 라고 입력해도 됨)
"set nonumber                   "라인 넘버 비활성(set nu! 라고 입력해도 됨)
set hlsearch                    "검색 시 하이라이트 
set ignorecase                  "검색 시 대소문자 무시하기
"set noignorecase               "검색 시 대소문자 구분하기
set showmatch                   "현재 선택된 괄호의 쌍을 표시
set history=1000                "vi 편집기록 기억갯수
set title                       "타이틀바에 현재 편집 중인 파일을 표시
set cursorline                  "커서가 있는 라인을 강조 표시 
set wrap                        "너무 긴 줄 자동 줄바꿈
"set nowrap                     "wrap 해제
set clipboard=unnamed           "시스템의 클립 보드에서 vim 붙여 넣기. 
set fileencodings=utf8,euc-kr   "한글 사용
set noswapfile                  "vim에서 스왑 파일 생성 비활성화
set nobackup                    "vim에서 백업 파일 안 생기게 하기
set smartindent                 "스마트한 들여 쓰기 사용
set autoindent                  "자동 들여 쓰기를 사용
set cindent                     "C언어 자동 들여 쓰기
set tabstop=4                   "탭을 4칸으로
set shiftwidth=4                " >> 또는 << 키로 들여 쓰기 할때 스페이스의 갯수. 기본값 8
set expandtab                   "탭을 스페이스로 바꾸기


"==========플러그인 설치==========
call plug#begin('~/.local/share/nvim/plugged')

"----꾸미기 관련-----
Plug 'joshdick/onedark.vim'                         "onedark 테마 
Plug 'vim-airline/vim-airline'                      "airline(vi 하단하고 상단 꾸밈)              
Plug 'vim-airline/vim-airline-themes'               "airline 테마
"-----자동완성-----
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Use release branch
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}             " Or latest tag
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}      " Or build from source code by use yarn: https://yarnpkg.com
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }    "파이썬 자동 완성
Plug 'yaegassy/coc-pydocstring', {'do': 'yarn install --frozen-lockfile'}                               "coc-pydocstring
Plug 'davidhalter/jedi-vim'                         "자동완성 라이브러리
Plug 'vim-scripts/indentLine.vim'                   "들여쓰기 안내선
Plug 'jiangmiao/auto-pairs'                         "대괄호, 괄호, 따옴표 등을 쌍으로 삽입하거나 삭제.
Plug 'scrooloose/nerdcommenter'
"Plug 'chrisbra/vim-commentary'
"
"           -auto-pairs 사용법-
"   ·alt + p 를 누르면 enable, disable 가능.
"   ·alt + e 를 이용하면 중간 삽입 가능
"   ·fly mode  모름
"   ·alt + b 모름
"   ·alt + n는 다음 pairs로 이동
"
"-----NERDTree-----
Plug 'scrooloose/nerdtree'                          "NERDTree 설치
Plug 'jistr/vim-nerdtree-tabs'                      "NERDTree Tabs 설치
Plug 'ryanoasis/vim-devicons'                       "NERDTree에 예쁜 아이콘을 붙여주는 플러그인,nerd font 설치 필요함
"-----HTML/CSS/JavaScript-----
Plug 'mattn/emmet-vim'  							"html:5 를 입력 후 ctrl y 를 누른 뒤 ,를 누르면 html폼이 완성되는 플러그인
"Plug 'ap/vim-css-color'                            "css 소스코딩 하는 동안 색상들을 미리 보는 것
"Plug 'ying17zi/vim-live-latex-preview'             "vim-live-latex-previe
"-----기타-----
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }     "Markdown Preview (실행은 :MarkdownPreview , 중단은 :MarkdownPreviewStop)
Plug 'xolox/vim-easytags'                           "ctags를 쉽게 쓸 수 있게 해주는 easytags플러그인
Plug 'xolox/vim-misc'
Plug 'ronakg/quickr-cscope.vim'                     "cscope를 vim에서 편하게 쓸 수 있도록 도와주는 quickr-cscope.vim 플러그인
"-----유용하지만 사용 안하는 플러그인-----
Plug 'preservim/tagbar'                            "현재 파일내의 class, struct, prototype, typedef, macro 등을 요약하여 표시한다.
"Plug 'tpope/vim-fugitive'                          "git과 함께 쓰면 좋은 것
"ctrlp.vim                                          "vim내에서 파일을 쉽게 검색해서 해당 파일을 열게 해주는 플러그인
"Plug 'anyakichi/vim-surround'                      "수동 괄호 감싸기
"Plug 'mhinz/vim-startify'                          "Vim 및 Neovim의 시작 화면을 제공

call plug#end()
"==========기타==========

"-----플러그인 설치를 위한 설정-----
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

" CoC <Tab>트리거 완료를 위해 또는 사용자 지정 키 사용
" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

"-----onedakr colorscheme 설정-----                          
colorscheme onedark
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ } 

hi Normal guibg=NONE ctermbg=NONE

"----- Nerd Tree -----
let NERDTreeWinPos = "left"
nmap <F7> :NERDTree<CR>
nnoremap <leader>r :NERDTreeFind<CR>

"----- 컴파일 단축키 -----
autocmd filetype python nnoremap <F9> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <F9> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd fileType java nnoremap <buffer> <F9> :exec '!javac' shellescape(expand('%'), 1) '&& java' shellescape(expand('%:r'), 1)<CR>

"tagbar 관련 
nmap <F8> :TagbarToggle<CR>

"----- Emmet 자동완성 단축키 -----
let g:user_emmet_leader_key=','

"----- Indent Guides(들여쓰기 안내선) -----
let g:indentLine_char = '┆'
let g:indentLine_color_term = 256

"----- nvim 0.5 이상 아니어서 CoC 오류 생길 수 있다는 알림 처리 -----
let g:coc_disable_startup_warning = 1

"----- ctag 관련 설정 -----
set tag=./tags;/
" easy-tag
" tags를 비동기로 불러와준다. (필수) tag사이즈가 커지게 되면 vim이 블록되는 시간이 길어져서 답답하다
let g:easytags_async=1
" highlight를 켜면 좋지만 이것도 속도가 느려진다.
let g:easytags_auto_highlight = 0 
" struct의 멤버변수들도 추적이 된다.
let g:easytags_include_members = 1
" 현재 프로젝트에서 쓰는 tags파일을 우선 로드하고 없을 경우 global tags를 로드한다.
let g:easytags_dynamic_files = 1

"----- vimrc에 자동으로 cscope 데이터베이스를 로드해주는 함수를 추가 -----
function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  " else add the database pointed to by environment variable 
  elseif $CSCOPE_DB != "" 
    cs add $CSCOPE_DB
  endif
endfunction
au BufEnter /* call LoadCscope()

"----- NERD Commenter -----
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
map <Leader>cc <plug>NERDComToggleComment
map <Leader>c<space> <plug>NERDComComment

" map <F10>:<Leader>c<space><CR>





"이거 복사 붙여넣기 끝난 뒤에는 nvim에서 source % 하고 PlugInstall 하고 UpdateRemotePlugins 입력하기(플러그인 삭제는 PlugClean)
