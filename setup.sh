#!/bin/bash

# 更新系统软件包列表
sudo apt update

# 安装Neovim
sudo apt install neovim

cp -r ./nvim ~/.config/
