# 从源码编译安装Vim8.2+
---
首先从GitHub上面拉取源码  
```bash
#安装相关依赖
~> yum install lua lua-devel luajit luajit-devel ncurses-devel python python-devel python3 python3-devel tcl tcl-devel \
   perl perl-devel perl-Extutils-ParseXS perl-ExtUtils-XSpp perl-ExtUtils-CBuilder perl-ExtUtils-Embed \
   
# 从GitHub上面拉取源码  
~> git clone https://github.com/vim/vim.git
~> cd vim
~> ./configure --with-features=huge \
               --enable-multibyte \
               --enable-fontset  \
               --enable-cscope  \
               --enable-luainterp  \
               --enable-perlinterp  \
               --enable-rubyinterp=yes \
               --enable-pythoninterp=yes \
               --with-python-config-dir=/usr/lib64/python2.7/config \
               --enable-python3interp=yes \
               --with-python-config-dir=/usr/lib64/python3.6/config-3.6m-x86_64-linux-gnu \
               --ebable-tclinterp \
               --prefix=/usr/local/vim  \
               --with-compiledby="Guanvix"
              
# 参数解释
# --with-features=huge        开启最大特性支持
# --enable-multibyte          开启多字节支持,可以在Vim中输入中文
# --enable-fontset            开启字体设置支持
# --enable-cscope             开启对cscope的支持,cscope是一款代码浏览工具
# --enable-luainterp          开启lua支持
# --enable-perlinterp         开启perl支持
# --enable-rubyinterp=yes     开启ruby支持
# --enable-pythoninterp=yes   开启python2支持
# --with-python-config-dir=/usr/lib64/python2.7/config  指定python2配置路径,根据自己系统的实际所在位置而定
# --enable-python3interp=yes  开启python3支持
# --with-python-config-dir=/usr/lib64/python3.6/config-3.6m-x86_64-linux-gnu  指定python3o配置路径,根据自己系统的实际所在位置而定
# --prefix=/usr/local/vim     安装路径，根据自己喜好所定
# --with-compiledby="Guanvix" 编译者,根据自己的而定


```
