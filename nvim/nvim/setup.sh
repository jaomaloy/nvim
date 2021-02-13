#!bin/bash

nvim_dir=$HOME/.config/nvim
nvim_conf_file=$HOME/.config/nvim/init.vim
nvim_lua_dir=$HOME/.config/nvim/lua
nvim_themes_dir=$HOME/.config/nvim/themes

[ -d $nvim_dir ] || mkdir $nvim_dir
[ -d $nvim_lua_dir ] || mkdir $nvim_lua_dir
[ -d $nvim_themes_dir ] || mkdir $nvim_themes_dir

if [[ -f $nvim_conf_file || -L $nvim_conf_file ]]; then
    read -p "init.vim exists, override configuration?(y/n) " answer
    if [ "$answer" == "y" ]; then
        ln -rsf init.vim $nvim_dir
        ln -rsf keybindings.vim $nvim_dir
        ln -rsf settings.vim $nvim_dir
        ln -rsf plugins.vim $nvim_dir
        ln -rsf plugin-config.vim $nvim_dir
        ln -rsf coc-settings.json $nvim_dir
        ln -rsf lua/plug-colorizer.lua $nvim_lua_dir
        ln -rsf themes/material.vim $nvim_themes_dir
    fi
else
    ln -rs init.vim $nvim_dir
    ln -rs keybindings.vim $nvim_dir
    ln -rs settings.vim $nvim_dir
    ln -rs plugins.vim $nvim_dir
    ln -rs plugin-config.vim $nvim_dir
    ln -rs coc-settings.json $nvim_dir
    ln -rs lua/plug-colorizer.lua $nvim_lua_dir
    ln -rs themes/material.vim $nvim_themes_dir
fi
