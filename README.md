依赖软件包 [:shoe:](#plugin)<a name="top"/>
----------------
软件                                                          | 用处
:------------------------------------------------------------:|:---------------------------
[git](http://www.git-scm.com/)                                |clone资源库
[clang >= 3.2](http://llvm.org/releases/download.html)        |YouCompleteMe补全
[python  >= 2.7](https://www.python.org/download/releases)    |N多插件依赖
[nodejs](http://www.nodejs.org/)                              |js补全、语法校验
[fontforge](https://github.com/fontforge/fontforge)           |系统字体打补丁用到
[sdcv](http://sourceforge.net/projects/sdcv/)                 |stardict console version

1. 克隆资源库
----------------
    rm -rf ~/.vim

    git clone https://github.com/sxinle/dotvim ~/.vim/dotvim

    rm -f ~/.vimrc && ln -s ~/.vim/dotvim/rc/rc.local ~/.vimrc

2. 给系统字体打补丁([ fancy ](https://github.com/gabrielelana/awesome-terminal-fonts) 字符)
----------------------------------------------------------------------------------------------
	rm -rf ~/.fonts/Droid+Sans+Mono+Awesome*

	mkdir -p ~/.fonts

	cd ~/.vim/dotvim/awesomefonts && sh ./droid.sh

3. 使用[ Plug ](https://github.com/junegunn/vim-plug)安装vim插件
---------------------------------------------------------------------

    vim +PlugInstall! +qall

    ~/.vim/dotvim/init.sh

4. 安装[ YCM ](https://github.com/Valloric/YouCompleteMe)语义补全
----------------------------------------------------------------------

    cd ~/.vim/plugged/YouCompleteMe

    ./install.sh --clang-completer

### Resources

0. [vim资源汇总](http://u.memect.com/vim/)

1. [VimAwesome](http://vimawesome.com/)

1. [Google+](https://plus.google.com/communities/105049811056605918816)

2. [vimbits](http://www.vimbits.com/bits?sort=top)

3. [Learning vim the hard way](http://learnvimscriptthehardway.stevelosh.com/)

4. [Seven habits of effective text editing](http://www.moolenaar.net/habits.html)

5. [openvim tutorial](http://www.openvim.com/tutorial.html)

6. [vim genius](http://www.vimgenius.com/)

7. [vim colors](http://vimcolors.com/)

插件列表 <a name="plugin"/>[:shoe:](#top)
-----------
*	:star: [bling](https://github.com/bling/dotvim/commits/master)
*	:star: [spf13](https://github.com/spf13/spf13-vim/commits/3.0)
*	:star: [k-vim](https://github.com/wklken/k-vim)
*  ~~[VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim)~~
	* ~~插件管理(改用Plug)~~
*  [1.junegunn/vim-plug](https://github.com/junegunn/vim-plug)
	* 插件管理
*  [2.bling/vim-airline](https://github.com/bling/vim-airline)
	* 增强状态栏
*  [3.Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
	* clang语义补全
	* ~~[oblitum/YouCompleteMe](https://github.com/oblitum/YouCompleteMe) -- support for parameter completion --~~
*  [4.Valloric/MatchTagAlways](https://github.com/Valloric/MatchTagAlways)
	* 高亮成对html标签
*  [5.scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
	* 文件浏览
*  [6.scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)
	* 注释
*  [7.SirVer/ultisnips](https://github.com/SirVer/ultisnips)
	* 代码片段
*  [8.honza/vim-snippets](https://github.com/honza/vim-snippets)
	* 代码片段需要查找的文件
*  [9.majutsushi/tagbar](https://github.com/majutsushi/tagbar)
	* 代码outline
*  [10.mhinz/vim-startify](https://github.com/mhinz/vim-startify)
	* 友好启动画面
*  [11.kien/ctrlp.vim](https://github.com/kien/ctrlp.vim)
	* 快速查找
*  [12.tacahiroy/ctrlp-funky](https://github.com/tacahiroy/ctrlp-funky)
	* ctrlp函数支持
*  [13.Lokaltog/vim-easymotion](https://github.com/Lokaltog/vim-easymotion)
	* 快速移动
*  [14.jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)
	* 自动补全括号
*  [15.tpope/vim-surround](https://github.com/tpope/vim-surround)
	* 快速加括号'()','[]'...
*  [16.tpope/vim-repeat](https://github.com/tpope/vim-repeat)
	* 使[normal .]命令支持重复surround
*  [17.vim-scripts/YankRing.vim](https://github.com/vim-scripts/YankRing.vim)
	* 复制的历史持久化
*  [18.mbbill/undotree](https://github.com/mbbill/undotree)
	* 重做历史记录
*  [19.chrisbra/NrrwRgn](https://github.com/chrisbra/NrrwRgn)
	* 选中区域buf窗口编辑+回写
*  [20.junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)
	* 对齐插件
*  [21.godlygeek/tabular](https://github.com/godlygeek/tabular)
	* 没有vim-easy-align强大,但大范围对齐效率稍高...
*  [22.osyo-manga/vim-over](https://github.com/osyo-manga/vim-over)
	* 使'%s'替换可视[所见即所得]
*  [23.osyo-manga/vim-anzu](https://github.com/osyo-manga/vim-anzu)
	* 搜索显示当前为结果的第几个
*  [24.maksimr/vim-jsbeautify](https://github.com/maksimr/vim-jsbeautify)
	* js、html、json格式化
*  [25.jelera/vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax)
	* js语法高亮扩展
	* [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)
*  [26.marijnh/tern_for_vim](https://github.com/marijnh/tern_for_vim)
	* js补全+跳转(语义级)
*  [27.wookiehangover/jshint.vim](https://github.com/wookiehangover/jshint.vim)
	* js代码校验
*  [28.leshill/vim-json](https://github.com/leshill/vim-json)
	* json语法高亮
*  [29.terryma/vim-expand-region](https://github.com/terryma/vim-expand-region)
	* +、-扩展选择区块
*  [30.dkprice/vim-easygrep](https://github.com/dkprice/vim-easygrep)
	* grep当前光标下字符
*  [31.kshenoy/vim-signature](https://github.com/kshenoy/vim-signature)
	* 变量标记"mark"
*  [32.jlanzarotta/bufexplorer](https://github.com/jlanzarotta/bufexplorer)
	* 缓冲区列表管理
*  ~~[kien/rainbow_parentheses.vim](https://github.com/kien/rainbow_parentheses.vim)~~
	* ~~彩虹括号~~
*  [33.luochen1990/rainbow](https://github.com/luochen1990/rainbow)
	* 彩虹括号improved...
*  [34.Rykka/colorv.vim](https://github.com/Rykka/colorv.vim)
	* 颜色预览、编辑
*  [35.flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes)
	* vim配色
*  [36.vim-scripts/ScrollColors](https://github.com/vim-scripts/ScrollColors)
	* 快速切换配色方案
*  [37.klen/python-mode](https://github.com/klen/python-mode)
	* python语法检查
*  [38.nathanaelkane/vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
	* 代码对齐线
*  [39.Spaceghost/vim-matchit](https://github.com/Spaceghost/vim-matchit)
	* 使%支持html标签跳转
*  [40.zhaocai/GoldenView.Vim](https://github.com/zhaocai/GoldenView.Vim)
	* 自动重画窗口大小
*  [41.justinmk/vim-sneak](https://github.com/justinmk/vim-sneak)
	* 轻量级easymotion 
*  [42.mattn/emmet-vim](https://github.com/mattn/emmet-vim)
	* 前身Zen-Coding
*  [43.tpope/vim-fireplace](https://github.com/tpope/vim-fireplace)
	* clojure REPL
*  ~~[gabrielelana/awesome-terminal-fonts](https://github.com/gabrielelana/awesome-terminal-fonts)~~
	* ~~fancy字符补丁~~
*  ~~[scrooloose/syntastic](https://github.com/scrooloose/syntastic)~~
	* ~~语义检查(VimL实现)~~
*  ~~[kana/vim-textobj-user](https://github.com/kana/vim-textobj-user)~~
	* ~~用户自定义textobj~~
*  ~~[othree/javascript-libraries-syntax.vim](https://github.com/othree/javascript-libraries-syntax.vim)~~
	* ~~第三方js库语法高亮~~
*  ~~[yonchu/accelerated-smooth-scroll](https://github.com/yonchu/accelerated-smooth-scroll)~~
	* ~~平滑滚动~~
