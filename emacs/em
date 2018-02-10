if ! ps aux | egrep '[e]macs.*--daemon' > /dev/null
then
    echo 'running emacs'
    emacs --daemon &> /dev/null
fi

emacsclient -nw $1

#TODO need to fix color scheme overriding
