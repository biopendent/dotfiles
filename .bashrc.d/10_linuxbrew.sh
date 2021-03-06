if [ -d $HOME/.linuxbrew/ ];then
    LINUXBREW="$HOME/.dotfiles/.linuxbrew"
    export HOMEBREW_LOGS="$LINUXBREW/Logs"

    export PATH="$LINUXBREW/bin:$PATH"
    export PATH="$LINUXBREW/sbin:$PATH"
    # Break rbenv install / ruby-build?
    export C_INCLUDE_PATH=`smart_prepend C_INCLUDE_PATH $LINUXBREW/include`
    export C_INCLUDE_PATH=`smart_prepend C_INCLUDE_PATH $LINUXBREW/include/libxml2`
    export LIBRARY_PATH=`smart_prepend LIBRARY_PATH $LINUXBREW/lib`

    export MANPATH="$LINUXBREW/share/man:$MANPATH"
    export INFOPATH="$LINUXBREW/share/info:$INFOPATH"

    export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$LINUXBREW/opt/openssl"
fi
