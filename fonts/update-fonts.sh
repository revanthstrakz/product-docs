if stat -t *.ttf >/dev/null 2>&1
then
    sudo cp *.ttf  /usr/local/share/fonts/
fi

if stat -t *.otf >/dev/null 2>&1
then
    sudo cp *.otf  /usr/local/share/fonts/
fi

fc-cache -f
typst fonts