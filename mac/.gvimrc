" Disable the print key for macvim
" Enable ligatures

if has("gui_macvim")
    macmenu &File.Print key=<nop>
    set macligatures
endif
