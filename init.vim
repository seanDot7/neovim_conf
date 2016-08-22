" s.7(seanDot7) .vimrc
" 
" Special steps needed by following plugins, refer to the docs.
" youcompleteme, powerline-fonts

if &compatible
    set nocompatible              " be iMproved, required
endif
" filetype off                  " required
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim " path to dein.vim

" Python provider configuration
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Plugin path
let s:plugin_path = '~/.config/nvim/dein/repos/github.com'

" Set plugins root path
call dein#begin(expand('~/.config/nvim/dein'))
    call dein#add('Shougo/dein.vim')
    call dein#add('Shougo/vimproc.vim', {'build': 'make'})
" Environment {

    call dein#add('altercation/vim-colors-solarized')

    call dein#add('spf13/vim-colors')
    call dein#add('flazz/vim-colorschemes')

    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    call dein#add('powerline/fonts')

    call dein#add('scrooloose/nerdtree')
    call dein#add('jistr/vim-nerdtree-tabs')

    " call dein#add('kien/ctrlp.vim')

    call dein#add('amix/open_file_under_cursor.vim')

    " call dein#add('vim-scripts/mru.vim')

    call dein#add('myusuf3/numbers.vim')

    " call dein#add('vim-scripts/sessionman.vim')
    " call dein#add('xolox/vim-session')

    call dein#add('vim-scripts/matchit.zip')
    
    call dein#add('mbbill/undotree')
    
    call dein#add('vim-scripts/restore_view.vim')

    call dein#add('mhinz/vim-signify')

    call dein#add('tpope/vim-abolish.git')

    call dein#add('osyo-manga/vim-over')

    " call dein#add('kana/vim-textobj-user')
    " call dein#add('kana/vim-textobj-indent')

    call dein#add('gcmt/wildfire.vim')

    call dein#add('reedes/vim-litecorrect')

    call dein#add('Shougo/unite.vim')
    call dein#add('Shougo/vimproc.vim')
    call dein#add('Shougo/neomru.vim')
    call dein#add('Shougo/unite-session')
    
    call dein#add('ervandew/supertab')

    " call dein#add('terryma/vim-smooth-scroll')
" }

" Writing {
    call dein#add('easymotion/vim-easymotion')
    
    call dein#add('godlygeek/tabular')

    " call dein#add('reedes/vim-textobj-sentence')
    " call dein#add('reedes/vim-textobj-quote')
    " call dein#add('reedes/vim-wordy')
" }

" Programing {
    " General {
        " call dein#add('MarcWeber/vim-addon-mw-utils')
        " call dein#add('tomtom/tlib_vim')
        call dein#add('Valloric/YouCompleteMe')

        call dein#add('Valloric/ListToggle')
        call dein#add('scrooloose/syntastic')
        call dein#add('terryma/vim-multiple-cursors')
        call dein#add('vim-scripts/taglist.vim')
        call dein#add('nathanaelkane/vim-indent-guides')

        call dein#add('scrooloose/nerdcommenter')
        " call dein#add('tpope/vim-commentary')

        call dein#add('tpope/vim-sleuth')
        " call dein#add('ciaranm/detectindent')
        " call dein#add('jiangmiao/auto-pairs')
        call dein#add('Raimondi/delimitMate')

        call dein#add('tpope/vim-fugitive')
        call dein#add('airblade/vim-gitgutter')
        call dein#add('rhysd/conflict-marker.vim')

        call dein#add('SirVer/ultisnips')
        call dein#add('honza/vim-snippets')

        call dein#add('mileszs/ack.vim')

        call dein#add('tpope/vim-surround')
        call dein#add('tpope/vim-repeat')

        " call dein#add('tacahiroy/ctrlp-funky')

        " call dein#add('mattn/webapi-vim')
        " call dein#add('mattn/gist-vim')

        call dein#add('luochen1990/rainbow')

        call dein#add('majutsushi/tagbar')

        " call dein#add('spf13/vim-preview')

    " }

    " Python {
        call dein#add('klen/python-mode')
        call dein#add('yssource/python.vim')
        call dein#add('python_match.vim')
        call dein#add('pythoncomplete')
        call dein#add('jmcantrell/vim-virtualenv')
    " }

    " Javascript {
        call dein#add('pangloss/vim-javascript')
        call dein#add('elzr/vim-json')
        call dein#add('kchmck/vim-coffee-script')
        call dein#add('briancollins/vim-jst')
    " }

    " CSS/Less/Scss {
        " call dein#add('hail2u/vim-css3-syntax')
        " call dein#add('JulesWang/css.vim') " only necessary if your Vim version < 7.4
        " call dein#add('cakebaker/scss-syntax.vim')
        " call dein#add('tpope/vim-haml')
        " call dein#add('groenewege/vim-less')

        " call dein#add('gorodinskiy/vim-coloresque')
    " }

    " HTML {
        call dein#add('mattn/emmet-vim')
        " call dein#add('amirh/HTML-AutoCloseTag')
    " }
    
    " Vue {
        " call dein#add('posva/vim-vue')
        " call dein#add('sekel/vim-vue-syntastic')
    " }

    " Rust {
        " call dein#add('rust-lang/rust.vim')
    " }

    " Ruby {
        " call dein#add('tpope/vim-rails')
        " call dein#add('tpope/vim-cucumber')
        " call dein#add('quentindecock/vim-cucumber-align-pipes')
    " }

    " Markdown {
        call dein#add('tpope/vim-markdown')
    " }
" }
"
call dein#end()

filetype plugin indent on    " required

" Set augroup
augroup MyAutoCmd
  autocmd!
augroup END

" Vim UI {

    " Identify platform {
        silent function! OSX()
            return has('macunix')
        endfunction
        silent function! LINUX()
            return has('unix') && !has('macunix') && !has('win32unix')
        endfunction
        silent function! WINDOWS()
            return  (has('win32') || has('win64'))
        endfunction
    " }

    " GVIM- (here instead of .gvimrc)
    if has('gui_running')
        set guioptions-=T           " Remove the toolbar
        set lines=40                " 40 lines of text instead of 24
        if !exists("g:spf13_no_big_font")
            if LINUX() && has("gui_running")
                set guifont=Andale\ Mono\ Regular\ 12,Menlo\ Regular\ 11,Consolas\ Regular\ 12,Courier\ New\ Regular\ 14
            elseif OSX() && has("gui_running")
                set guifont=Andale\ Mono\ Regular:h12,Menlo\ Regular:h11,Consolas\ Regular:h12,Courier\ New\ Regular:h14
            elseif WINDOWS() && has("gui_running")
                set guifont=Andale_Mono:h10,Menlo:h10,Consolas:h10,Courier_New:h10
            endif
        endif
    else
        if &term == 'xterm' || &term == 'screen'
            set t_Co=256            " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
        endif
        "set term=builtin_ansi       " Make arrow and other keys work
    endif


    syntax enable
    syntax on
    set background=dark
    syntax sync minlines=256
    " s7 - cursorline and cursorcolumn will make vim slow.
    set cursorline
    " set cursorcolumn

    if dein#tap('vim-colors-solarized')
        let g:solarized_termcolors=256
        let g:solarized_termtrans=1
        let g:solarized_contrast="normal"
        let g:solarized_visibility="normal"
        colorscheme solarized             " Load a colorscheme
    endif

    set tabpagemax=15               " Only show 15 tabs
    set showmode                    " Display the current mode

    highlight clear SignColumn      " SignColumn should match background
    highlight clear LineNr          " Current line number row will have same background color in relative mode
    "highlight clear CursorLineNr    " Remove highlight color from current line number

    " exe "hi! airline_error ctermfg=White"
    " highlight airline_error_bold ctermfg=White
    " highlight airline_error_inactive ctermfg=White
    " highlight airline_error_inactive_bold ctermfg=White
    
    if has('cmdline_info')
        set ruler                   " Show the ruler
        set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
        set showcmd                 " Show partial commands in status line and
                                    " Selected characters/lines in visual mode
    endif

    if has('statusline')
        set laststatus=2

        " A common statusline
        " set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

        " Broken down into easily includeable segments
        set statusline=%<%f\                     " Filename
        set statusline+=%w%h%m%r                 " Options
        if dein#tap('vim-fugitive')
            set statusline+=%{fugitive#statusline()} " Git Hotness
        endif
        set statusline+=\ [%{&ff}/%Y]            " Filetype
        set statusline+=\ [%{getcwd()}]          " Current dir
        set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
    endif

    set backspace=indent,eol,start  " Backspace for dummies
    set linespace=0                 " No extra spaces between rows
    set number                      " Line numbers on
    set showmatch                   " Show matching brackets/parenthesis
    set incsearch                   " Find as you type search
    set hlsearch                    " Highlight search terms
    set winminheight=0              " Windows can be 0 line high
    set ignorecase                  " Case insensitive search
    set smartcase                   " Case sensitive when uc present
    set wildmenu                    " Show list instead of just completing
    set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
    set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
    set scrolljump=5                " Lines to scroll when cursor leaves screen
    set scrolloff=3                 " Minimum lines to keep above and below cursor
    set foldenable                  " Auto fold code
    set list
    set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

    set so=7                        " Set 7 lines to the cursor - when moving vertically using j/k
    set cmdheight=2                 " Height of the command bar
    set hid                         " A buffer becomes hidden when it is abandoned
    set mouse=a                     " Automatically enable mouse usage
    set mousehide                   " Hide the mouse cursor while typing
    set lazyredraw                  " Don't redraw while executing macros (good performance config)
    set magic                       " For regular expressions turn magic on
    set mat=2                       " How many tenths of a second to blink when matching brackets
    set ffs=unix,dos,mac            " Use Unix as the standard file type

    scriptencoding utf-8
    set encoding=utf8               " Set utf8 as standard encoding and en_US as the standard language


    " No annoying sound on errors
    set noerrorbells
    set novisualbell
    set t_vb=
    set tm=500

    " Add a bit extra margin to the left
    " set foldcolumn=1

    " Turn backup off, since most stuff is in SVN, git et.c anyway...
    set nobackup
    set nowb
    set noswapfile

    " Linebreak on 500 characters
    set lbr
    set tw=500

    " Visual mode pressing * or # searches for the current selection
    " Super useful! From an idea by Michael Naumann
    vnoremap <silent> * :call VisualSelection('f', '')<CR>
    vnoremap <silent> # :call VisualSelection('b', '')<CR>

    " Set extra options when running in GUI mode
    if has("gui_running")
        set guioptions-=T
        set guioptions-=e
        set t_Co=256
        set guitablabel=%M\ %t
    endif

    " Treat long lines as break lines (useful when moving around in them)
    map j gj
    map k gk

    " Avoid garbled characters in Chinese language windows OS
    let $LANG='en' 
    set langmenu=en
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim

    " Ignore compiled files
    set wildignore=*.o,*~,*.pyc
    if has("win16") || has("win32")
        set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
    else
        " Add additional space to the comment
        set wildignore+=.git\*,.hg\*,.svn\*
    endif

" }

" Formatting {

    set wrap                        " Wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set cindent                     " Clever indent
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    set splitright                  " Puts new vsplit windows to the right of the current
    set splitbelow                  " Puts new split windows to the bottom of the current
    "set matchpairs+=<:>             " Match, to be used with %
    set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
    "set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks

    autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:s7_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif
    "autocmd FileType go autocmd BufWritePre <buffer> Fmt
    autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
    autocmd FileType haskell,puppet,ruby,yml setlocal expandtab shiftwidth=2 softtabstop=2
    " preceding line best in a plugin but here for now.

    autocmd BufNewFile,BufRead *.coffee set filetype=coffee

    " Workaround vim-commentary for Haskell
    autocmd FileType haskell setlocal commentstring=--\ %s
    " Workaround broken colour highlighting in Haskell
    autocmd FileType haskell,rust setlocal nospell

    " special indentation behavior by file type
    autocmd FileType html setlocal shiftwidth=2 tabstop=2 sts=0 expandtab
    autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 sts=0 expandtab
    autocmd FileType css setlocal shiftwidth=2 tabstop=2 sts=0 expandtab
    autocmd FileType scss setlocal shiftwidth=2 tabstop=2 sts=0 expandtab
    " autocmd FileType vue setlocal shiftwidth=2 tabstop=2 sts=0 expandtab

    autocmd BufNewFile,BufRead *.vue set filetype=html.javascript.css

" }

" Key Mappings / Global Settings {

    let mapleader = ","
    let g:mapleader = ","

    " Sets how many lines of history VIM has to remember
    set history=1000
    
    " Set to auto read when a file is changed from the outside
    set autoread

    " clipboard
    if has('clipboard')
        if has('unnamedplus')  " When possible use + register for copy-paste
            set clipboard=unnamed,unnamedplus
        else         " On mac and Windows, use * register for copy-paste
            set clipboard=unnamed
        endif
    endif

    if OSX()
        vmap <C-c> y:call system("pbcopy", getreg("/""))<CR>
        nmap <C-v> :call setreg("/"",system("pbpaste"))<CR>p
    endif

    " If no plugin like restore-view exists
    " Return to last edit position when opening files (You want this!)
    " autocmd BufReadPost *
    "      \ if line("'\"") > 0 && line("'\"") <= line("$") |
    "      \   exe "normal! g`\"" |
    "      \ endif
    " Remember info about open buffers on close
    " set viminfo^=%

    " ================== Key Mappings ================
    " Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
    map <space> /
    map <c-space> ?

    " Disable highlight when <leader><cr> is pressed
    map <silent> <leader><cr> :noh<cr>

    " Smart way to move between windows
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-h> <C-W>h
    map <C-l> <C-W>l

    " Close the current buffer
    map <leader>bd :Bclose<cr>

    " Close all the buffers
    map <leader>ba :bufdo bd<cr>

    " Useful mappings for managing tabs
    map <leader>tn :tabnew<cr>
    map <leader>to :tabonly<cr>
    map <leader>tc :tabclose<cr>
    map <leader>t<leader> :tabnext<cr>
    map <leader>tm :tabmove 

    " Let 'tl' toggle between this and the last accessed tab
    let g:lasttab = 1
    nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
    au TabLeave * let g:lasttab = tabpagenr()


    " Opens a new tab with the current buffer's path
    " Super useful when editing files in the same directory
    map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

    " Switch CWD to the directory of the open buffer
    map <leader>cd :cd %:p:h<cr>:pwd<cr>

    " Specify the behavior when switching between buffers 
    try
      set switchbuf=useopen,usetab,newtab
      set stal=2
    catch
    endtry

    " :W sudo saves the file 
    " (useful for handling the permission-denied error)
    command W w !sudo tee % > /dev/null

    " Fast saving
    nmap <leader>w :w!<cr>

    " sync syntax highlight mannually
    noremap <leader>sr <Esc>:syntax sync fromstart<CR>
    inoremap <leader>sr <C-o>:syntax sync fromstart<CR>

    " tabs related
    " Mac only. Alt+;/' to switch to left/right tab.
    if has("mac") || has("macunix")
        " nmap ¬ :tabnext<cr>
        " nmap ˙ :tabprevious<cr>
        nmap <A-'> :tabnext<cr>
        nmap <A-;> :tabprevious<cr>
    endif

    " map <leader>ll :tabnext<cr>
    " map <leader>hh :tabprevious<cr>
    map <leader>thh :-tabmove<cr>
    map <leader>tll :+tabmove<cr>
    " map alt-1....0 to swtich tab
    if has("mac") || has("macunix")
        :nn <A-1> 1gt 
        :nn <A-2> 2gt 
        :nn <A-3> 3gt 
        :nn <A-4> 4gt 
        :nn <A-5> 5gt 
        :nn <A-6> 6gt 
        :nn <A-7> 7gt 
        :nn <A-8> 8gt 
        :nn <A-9> 9gt 
        :nn <A-0> :tablast<CR>
    endif

    " Use tab & shift+tab to indent
    nmap <tab> V>
    nmap <s-tab> V<
    vmap <tab> >gv
    vmap <s-tab> <gv

    " Remap ctrl-o, ctrl-i to alt-h/l
    noremap <A-h> <C-o>
    noremap <A-l> <C-i>

    " Line swap
    " nmap <s-j> mz:m+<cr>`z
    " nmap <s-k> mz:m-2<cr>`z
    " vmap <s-j> :m'>+<cr>`<my`>mzgv`yo`z
    " vmap <s-k> :m'<-2<cr>`>my`<mzgv`yo`z

    " Mac only, alt + j/k to swap line
    if has("mac") || has("macunix")
        nmap <A-j> mz:m+<cr>`z
        nmap <A-k> mz:m-2<cr>`z
        vmap <A-j> :m'>+<cr>`<my`>mzgv`yo`z
        vmap <A-k> :m'<-2<cr>`>my`<mzgv`yo`z
    endif

    " Remap VIM 0 to first non-blank character
    map 0 ^

    " Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
    nmap <M-j> mz:m+<cr>`z
    nmap <M-k> mz:m-2<cr>`z
    vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
    vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

    if has("mac") || has("macunix")
      nmap <D-j> <M-j>
      nmap <D-k> <M-k>
      vmap <D-j> <M-j>
      vmap <D-k> <M-k>
    endif

    " Delete trailing white space on save, useful for Python and CoffeeScript ;)
    func! DeleteTrailingWS()
      exe "normal mz"
      %s/\s\+$//ge
      exe "normal `z"
    endfunc
    autocmd BufWrite *.py :call DeleteTrailingWS()
    autocmd BufWrite *.coffee :call DeleteTrailingWS()


    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => Ag searching and cope displaying
    "    requires ag.vim - it's much better than vimgrep/grep
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " When you press gv you Ag after the selected text
    vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

    " Open Ag and put the cursor in the right position
    map <leader>g :Ag 

    " When you press <leader>r you can search and replace the selected text
    vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>

    " Do :help cope if you are unsure what cope is. It's super useful!
    "
    " When you search with Ag, display your results in cope by doing:
    "   <leader>cc
    "
    " To go to the next search result do:
    "   <leader>n
    "
    " To go to the previous search results do:
    "   <leader>p
    "
    map <leader>cc :botright cope<cr>
    map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
    map <leader>n :cn<cr>
    map <leader>p :cp<cr>

    " Pressing ,sp will toggle and untoggle spell checking
    map <leader>sp :setlocal spell!<cr>

    " Shortcuts using <leader>
    " map <leader>sn ]s
    " map <leader>sp [s
    " map <leader>sa zg
    " map <leader>s? z=


    " => Misc
    " Remove the Windows ^M - when the encodings gets messed up
    " noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

    " Quickly open a buffer for scribble
    " map <leader>q :e ~/buffer<cr>

    " Quickly open a markdown buffer for scribble
    " map <leader>x :e ~/buffer.md<cr>

    " Toggle paste mode on and off
    " map <leader>pp :setlocal paste!<cr>

    nmap <silent> <leader>rp :!python %<cr>
    nmap <silent> <leader>rr :!<cr>
" }

" Plugins {
    " vim-airline {
        " Set configuration options for the statusline plugin vim-airline.
        " Use the powerline theme and optionally enable powerline symbols.
        " To use the symbols , , , , , , and .in the statusline
        " segments add the following to your .vimrc.before.local file:
        "   let g:airline_powerline_fonts=1
        " If the previous symbols do not render for you then install a
        " powerline enabled font.

        " See `:echo g:airline_theme_map` for some more choices
        " Default in terminal vim is 'dark'
        if dein#tap('vim-airline-themes')
            if !exists('g:airline_theme')
                let g:airline_theme = 'solarized'
            endif
            if !exists('g:airline_powerline_fonts')
                " Use the default set of separators with a few customizations
                let g:airline_left_sep='›'  " Slightly fancier than '>'
                let g:airline_right_sep='‹' " Slightly fancier than '<'
            endif
        endif
    " }

    " NerdTree {
        if dein#tap('nerdtree')
            map <C-e> <plug>NERDTreeTabsToggle<CR>
            map <leader>e :NERDTreeFind<CR>
            nmap <leader>nt :NERDTreeFind<CR>
                " NERDTree

            let g:NERDTreeDirArrowExpandable = '▸'
            let g:NERDTreeDirArrowCollapsible = '▾'
            let NERDTreeQuitOnOpen = 1
            let NERDTreeShowBookmarks=1
            let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$', '\.DS_Store$']
            let NERDTreeChDirMode=0
            let NERDTreeQuitOnOpen=1
            let NERDTreeMouseMode=2
            let NERDTreeShowHidden=1
            let NERDTreeKeepTreeInNewTab=1
            let NERDTreeWinSize = 31
            let g:nerdtree_tabs_open_on_gui_startup=0
        endif
    " }

    " nerdcommenter {
        " Add additional space to the comment
        let NERDSpaceDelims = 1
        " let g:NERDCustomDelimiters = { 'javascript' : { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/'  } } 
    " }

    " Rainbow {
        if dein#tap('rainbow')
            let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
        endif
    "}

    " Fugitive {
        if dein#tap('vim-fugitive')
            nnoremap <silent> <leader>gs :Gstatus<CR>
            nnoremap <silent> <leader>gd :Gdiff<CR>
            nnoremap <silent> <leader>gc :Gcommit<CR>
            nnoremap <silent> <leader>gb :Gblame<CR>
            nnoremap <silent> <leader>gl :Glog<CR>
            nnoremap <silent> <leader>gp :Git push<CR>
            nnoremap <silent> <leader>gr :Gread<CR>
            nnoremap <silent> <leader>gw :Gwrite<CR>
            nnoremap <silent> <leader>ge :Gedit<CR>
            " Mnemonic _i_nteractive
            nnoremap <silent> <leader>gi :Git add -p %<CR>
            nnoremap <silent> <leader>gg :SignifyToggle<CR>
        endif
    "}

    " YouCompleteMe {
        if dein#tap('youcompleteme')
            nnoremap <leader>gdl :YcmCompleter GoToDeclaration<CR>
            nnoremap <leader>gdf :YcmCompleter GoToDefinition<CR>
            nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
            map <F3> :YcmCompleter GoToDefinitionElseDeclaration<CR>


            let g:ycm_min_num_of_chars_for_completion = 2 
            let g:ycm_autoclose_preview_window_after_completion=1
            let g:ycm_complete_in_comments = 1
            " let g:ycm_key_list_select_completion = ['<tab>', '<c-j>', '<c-n>', '<Down>']
            " let g:ycm_key_list_previous_completion = ['<c-k>', '<c-p>', '<Up>']
            let g:ycm_confirm_extra_conf = 0
            let g:ycm_path_to_python_interpreter = '/usr/local/bin/python3'

            let g:acp_enableAtStartup = 0

            " enable completion from tags
            let g:ycm_collect_identifiers_from_tags_files = 1
            let g:ycm_complete_in_comments = 1
            let g:ycm_complete_in_strings = 1
            let g:ycm_collect_identifiers_from_comments_and_strings = 0
            " remap Ultisnips for compatibility for YCM
            " let g:UltiSnipsExpandTrigger = '<C-j>'
            " let g:UltiSnipsJumpForwardTrigger = '<C-j>'
            " let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

            " Enable omni completion.
            autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
            autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
            autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
            autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
            autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
            autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
            autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

            " Haskell post write lint and check with ghcmod
            " $ `cabal install ghcmod` if missing and ensure
            " ~/.cabal/bin is in your $PATH.
            if !executable("ghcmod")
                autocmd BufWritePost *.hs GhcModCheckAndLintAsync
            endif

            " For snippet_complete marker.
            if !exists("g:spf13_no_conceal")
                if has('conceal')
                    set conceallevel=2 concealcursor=i
                endif
            endif

            " Disable the neosnippet preview candidate window
            " When enabled, there can be too much visual noise
            " especially when splits are used.
            set completeopt-=preview
        endif
    " }

    " ultisnips {
        if dein#tap('ultisnips')
            let g:UltiSnipsExpandTrigger="<C-space>"
            let g:UltiSnipsJumpForwardTrigger = '<C-j>'
            let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
            let g:UltiSnipsRemoveSelectModeMappings = 0
        endif
    " }

    " supertab {
        if dein#tap('supertab')
            let g:ycm_key_list_select_completion = ['<C-n>', '<C-j>', '<Down>'] 
            let g:ycm_key_list_previous_completion = ['<C-p>', '<C-k>', '<Up>']
            let g:SuperTabDefaultCompletionType = '<C-n>'
        endif
    " }

    " Tabularize {
        if dein#tap('tabular')
            nmap <Leader>a& :Tabularize /&<CR>
            vmap <Leader>a& :Tabularize /&<CR>
            nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
            vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
            nmap <Leader>a=> :Tabularize /=><CR>
            vmap <Leader>a=> :Tabularize /=><CR>
            nmap <Leader>a: :Tabularize /:<CR>
            vmap <Leader>a: :Tabularize /:<CR>
            nmap <Leader>a:: :Tabularize /:\zs<CR>
            vmap <Leader>a:: :Tabularize /:\zs<CR>
            nmap <Leader>a, :Tabularize /,<CR>
            vmap <Leader>a, :Tabularize /,<CR>
            nmap <Leader>a,, :Tabularize /,\zs<CR>
            vmap <Leader>a,, :Tabularize /,\zs<CR>
            nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
            vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
        endif
    " }

    " Session List {
        " set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
        set sessionoptions=buffers,curdir,folds,tabpages,winsize
        if dein#tap('sessionman.vim')
            nmap <leader>sl :SessionList<CR>
            nmap <leader>ss :SessionSave<CR>
            nmap <leader>sc :SessionClose<CR>
        endif
        if dein#tap('unite-session')
            nmap <leader>sl :UniteSessionLoad 
            nmap <leader>ss :UniteSessionSave 
        endif
    " }

    " JSON {
        nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>

        let g:vim_json_syntax_conceal = 0
    " }

    " PyMode {
        " Disable if python support not present
        if !has('python') && !has('python3')
            let g:pymode = 0
        endif

        if dein#tap('python-mode')
            let g:pymode_lint_checkers = ['pyflakes']
            let g:pymode_trim_whitespaces = 0
            let g:pymode_options = 0
            let g:pymode_rope = 0
            " Override run current python file key shortcut to Ctrl-Shift-e
            let g:pymode_run_bind = "<C-x>"
            " let g:pymode_virtualenv = 1
            " let g:pymode_python = 'python'
            " let g:pymode_paths = ['/Users/seandot7/.pyenv/shims/']
        endif
    " }

    " UndoTree {
        if dein#tap('undotree')
            nnoremap <Leader>u :UndotreeToggle<CR>
            " If undotree is opened, it is likely one wants to interact with it.
            let g:undotree_SetFocusWhenToggle=1
        endif
    " }

    " indent_guides {
        if dein#tap('vim-indent-guides')
            let g:indent_guides_start_level = 2
            let g:indent_guides_guide_size = 1
            let g:indent_guides_enable_on_vim_startup = 1
        endif
    " }

    " Wildfire {
        if dein#tap('wildfire.vim')
            " let g:wildfire_objects = {
            " \ "*" : ["i'", 'i"', "i)", "i]", "i}", "ip"],
            " \ "html,xml" : ["at"],
            " \ }
        endif
    " }

    " vim-javascript {
        if dein#tap('vim-javascript')
            let g:javascript_enable_domhtmlcss = 1
        endif
    " }

    " delimitMate {
        if dein#tap('delimitMate')
            let delimitMate_expand_cr = 1
        endif
    " }

    " syntastic {
        if dein#tap('syntastic')
            noremap <leader>se :SyntasticCheck<CR>
            " Syntastic Hide
            noremap <leader>sh :lclose<CR>

            let delimitMate_expand_cr = 1
            set statusline+=%#warningmsg#
            set statusline+=%{SyntasticStatuslineFlag()}
            set statusline+=%*

            let g:syntastic_always_populate_loc_list = 1
            let g:syntastic_auto_loc_list = 1
            let g:syntastic_check_on_open = 0
            let g:syntastic_check_on_wq = 0
            let g:syntastic_javascript_checkers = ['eslint']
            " let g:syntastic_vue_checkers = ['eslint']
            " let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
            " if matchstr(local_eslint, "^\/\\w") == ''
              " let local_eslint = getcwd() . "/" . local_eslint
            " endif
            " if executable(local_eslint)
              " let g:syntastic_javascript_eslint_exec = local_eslint
              " let g:syntastic_vue_eslint_exec = local_eslint
            " endif
        endif
    " }

    " vim-smooth-scroll {
        if dein#tap('vim-smooth-scroll')
            " noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
            " noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
            " noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
            " noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
        endif
    " }

    " unite {
        if dein#tap('unite.vim')
            nnoremap <silent> <C-p> :<C-u>Unite
                  \ -buffer-name=files buffer file_mru bookmark file_rec/async<CR>
            nnoremap <silent> <leader>f :<C-u>Unite -buffer-name=buffers file_mru buffer<CR>

            let g:unite_enable_start_insert = 1
            let g:unite_data_directory = "~/.vim_unite"
            call unite#filters#matcher_default#use(['matcher_fuzzy'])
            " call unite#filters#sorter_default#use(['sorter_rank']))
            call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
                \ 'ignore_pattern', join([
                \ '\.git/',
                \ 'git5/.*/review/',
                \ 'google/obj/',
                \ 'tmp/',
                \ '.sass-cache',
                \ 'node_modules/',
                \ 'bower_components/',
                \ 'dist/',
                \ '.git5_specs/',
                \ '.pyc',
                \ 'build/',
                \ '.DS_Store',
                \ '.tox/'
                \ ], '\|'))

            " Map space to the prefix for Unite
            nnoremap [unite] <Nop>
            nmap <leader>u [unite]

            " General fuzzy search
            nnoremap <silent> [unite]<space> :<C-u>Unite
                  \ -buffer-name=files buffer file_mru bookmark file_rec/async<CR>

            " Quick registers
            nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>

            " Quick buffer and mru
            nnoremap <silent> [unite]u :<C-u>Unite -buffer-name=buffers file_mru buffer<CR>

            " Quick yank history
            nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yanks history/yank<CR>

            " Quick outline
            nnoremap <silent> [unite]o :<C-u>Unite -buffer-name=outline -vertical outline<CR>

            " Quick sessions (projects)
            nnoremap <silent> [unite]p :<C-u>Unite -buffer-name=sessions session<CR>

            " Quick sources
            nnoremap <silent> [unite]a :<C-u>Unite -buffer-name=sources source<CR>

            " Quick snippet
            nnoremap <silent> [unite]s :<C-u>Unite -buffer-name=snippets ultisnips<CR>

            " Quickly switch lcd
            nnoremap <silent> [unite]d
                  \ :<C-u>Unite -buffer-name=change-cwd -default-action=cd directory_mru directory_rec/async<CR>

            " Quick file search
            nnoremap <silent> [unite]f :<C-u>Unite -buffer-name=files file_rec/async file/new<CR>

            " Quick grep from cwd
            nnoremap <silent> [unite]g :<C-u>Unite -buffer-name=grep grep:.<CR>

            " Quick help
            nnoremap <silent> [unite]h :<C-u>Unite -buffer-name=help help<CR>

            " Quick line using the word under cursor
            " nnoremap <silent> [unite]l :<C-u>UniteWithCursorWord -buffer-name=search_file line<CR>

            " Quick line
            nnoremap <silent> [unite]l :<C-u>Unite -buffer-name=search_file line<CR>

            " Quick MRU search
            nnoremap <silent> [unite]m :<C-u>Unite -buffer-name=mru file_mru<CR>

            " Quick find
            nnoremap <silent> [unite]n :<C-u>Unite -buffer-name=find find:.<CR>

            " Quick commands
            nnoremap <silent> [unite]c :<C-u>Unite -buffer-name=commands command<CR>

            " Quick bookmarks
            nnoremap <silent> [unite]b :<C-u>Unite -buffer-name=bookmarks bookmark<CR>

            " Fuzzy search from current buffer
            " nnoremap <silent> [unite]b :<C-u>UniteWithBufferDir
            " \ -buffer-name=files -prompt=%\  buffer file_mru bookmark file<CR>

            " Quick commands
            nnoremap <silent> [unite]; :<C-u>Unite -buffer-name=history -default-action=edit history/command command<CR>

            " Custom Unite settings
            autocmd MyAutoCmd FileType unite call s:unite_settings()
            function! s:unite_settings()
                " nmap <buffer> <ESC> <Plug>(unite_exit)
                nmap <buffer> <ESC> <Plug>(unite_insert_enter)
                imap <buffer> <ESC> <Plug>(unite_exit)
                " imap <buffer> <c-j> <Plug>(unite_select_next_line)
                imap <buffer> <c-j> <Plug>(unite_insert_leave)
                imap <buffer> <c-k> <Plug>(unite_insert_leave)
                nmap <buffer> <c-j> <Plug>(unite_loop_cursor_down)
                nmap <buffer> <c-k> <Plug>(unite_loop_cursor_up)
                nmap <buffer> <tab> <Plug>(unite_loop_cursor_down)
                nmap <buffer> <s-tab> <Plug>(unite_loop_cursor_up)
                imap <buffer> <c-a> <Plug>(unite_choose_action)
                imap <buffer> <Tab> <Plug>(unite_insert_leave)
                imap <buffer> jj <Plug>(unite_insert_leave)
                imap <buffer> <C-w> <Plug>(unite_delete_backward_word)
                imap <buffer> <C-u> <Plug>(unite_delete_backward_path)
                imap <buffer> '     <Plug>(unite_quick_match_default_action)
                nmap <buffer> '     <Plug>(unite_quick_match_default_action)
                nmap <buffer> <C-r> <Plug>(unite_redraw)
                imap <buffer> <C-r> <Plug>(unite_redraw)
                inoremap <silent><buffer><expr> <C-s> unite#do_action('split')
                nnoremap <silent><buffer><expr> <C-s> unite#do_action('split')
                inoremap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
                nnoremap <silent><buffer><expr> <C-v> unite#do_action('vsplit')

                let unite = unite#get_current_unite()
                if unite.buffer_name =~# '^search'
                nnoremap <silent><buffer><expr> r     unite#do_action('replace')
                else
                nnoremap <silent><buffer><expr> r     unite#do_action('rename')
                endif

                nnoremap <silent><buffer><expr> cd     unite#do_action('lcd')

                " Using Ctrl-\ to trigger outline, so close it using the same keystroke
                if unite.buffer_name =~# '^outline'
                imap <buffer> <C-\> <Plug>(unite_exit)
                endif

                " Using Ctrl-/ to trigger line, close it using same keystroke
                if unite.buffer_name =~# '^search_file'
                imap <buffer> <C-_> <Plug>(unite_exit)
                endif
            endfunction

            " Start in insert mode
            let g:unite_enable_start_insert = 1
            let g:unite_source_rec_async_command =
                \ ['ack', '-f', '--nofilter']
            " Enable short source name in window
            " let g:unite_enable_short_source_names = 1

            " Enable history yank source
            " let g:unite_source_history_yank_enable = 1

            " Open in bottom right
            let g:unite_split_rule = "botright"

            " Shorten the default update date of 500ms
            let g:unite_update_time = 200

            let g:unite_source_file_mru_limit = 20
            let g:unite_cursor_line_highlight = 'TabLineSel'
            " let g:unite_abbr_highlight = 'TabLine'

            let g:unite_source_file_mru_filename_format = ':~:.'
            let g:unite_source_file_mru_time_format = ''

            " For ack.
            if executable('ack-grep')
              let g:unite_source_grep_command = 'ack-grep'
              let g:unite_source_grep_default_opts = '-i --no-heading --no-color -a -H'
              let g:unite_source_grep_recursive_opt = ''
            elseif executable('ack')
              let g:unite_source_grep_command = 'ack'
              let g:unite_source_grep_default_opts = '-i --no-heading --no-color -a -H'
              let g:unite_source_grep_recursive_opt = ''
            elseif executable('ag')
              let g:unite_source_grep_command = 'ag'
              let g:unite_source_grep_default_opts =
                    \ '-i --vimgrep --hidden --ignore ' .
                    \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
              let g:unite_source_grep_recursive_opt = ''
            endif

            let g:unite_source_rec_max_cache_files = 99999


        endif
    " }

    " unite-session {
        " Save session automatically.
        let g:unite_source_session_enable_auto_save = 1
        let g:unite_source_session_options = 'buffers,curdir,folds,help,tabpages,winsize'
        " Pop up session selection if no file is specified
        " TODO: Why does this not work when Vim isn't run from tmux???!
        " autocmd MyAutoCmd VimEnter * call s:unite_session_on_enter()
        function! s:unite_session_on_enter()
          if !argc() && !exists("g:start_session_from_cmdline")
            Unite -buffer-name=sessions session
          endif
        endfunction
    " }
" }

" Functions {

    " Initialize NERDTree as needed {
    function! NERDTreeInitAsNeeded()
        redir => bufoutput
        buffers!
        redir END
        let idx = stridx(bufoutput, "NERD_tree")
        if idx > -1
            NERDTreeMirror
            NERDTreeFind
            wincmd l
        endif
    endfunction
    " }

    " Strip whitespace {
    function! StripTrailingWhitespace()
        " Preparation: save last search, and cursor position.
        let _s=@/
        let l = line(".")
        let c = col(".")
        " do the business:
        %s/\s\+$//e
        " clean up: restore previous search history, and cursor position
        let @/=_s
        call cursor(l, c)
    endfunction
    " }

    function! CmdLine(str)
        exe "menu Foo.Bar :" . a:str
        emenu Foo.Bar
        unmenu Foo
    endfunction 

    function! VisualSelection(direction, extra_filter) range
        let l:saved_reg = @"
        execute "normal! vgvy"

        let l:pattern = escape(@", '\\/.*$^~[]')
        let l:pattern = substitute(l:pattern, "\n$", "", "")

        if a:direction == 'b'
            execute "normal ?" . l:pattern . "^M"
        elseif a:direction == 'gv'
            call CmdLine("Ag \"" . l:pattern . "\" " )
        elseif a:direction == 'replace'
            call CmdLine("%s" . '/'. l:pattern . '/')
        elseif a:direction == 'f'
            execute "normal /" . l:pattern . "^M"
        endif

        let @/ = l:pattern
        let @" = l:saved_reg
    endfunction


    " Returns true if paste mode is enabled
    function! HasPaste()
        if &paste
            return 'PASTE MODE  '
        endif
        return ''
    endfunction

    " Don't close window, when deleting a buffer
    command! Bclose call <SID>BufcloseCloseIt()
    function! <SID>BufcloseCloseIt()
       let l:currentBufNum = bufnr("%")
       let l:alternateBufNum = bufnr("#")

       if buflisted(l:alternateBufNum)
         buffer #
       else
         bnext
       endif

       if bufnr("%") == l:currentBufNum
         new
       endif

       if buflisted(l:currentBufNum)
         execute("bdelete! ".l:currentBufNum)
       endif
    endfunction

" }
