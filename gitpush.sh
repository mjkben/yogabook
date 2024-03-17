#!/bin/bash

cd ~/Documents/MES-COURS/JUPYTER/book/
jupyter-book build .
cp -r ~/Documents/MES-COURS/JUPYTER/book/* ~/Git-Local_Repo/github/yogabook

cd ~/Git-Local_Repo/github/yogabook
git add ./*
git commit -m "first commit"
# git remote add origin git@github.com:<user>/<repository-name>.git
git push -u origin main
ghp-import -n -p -f _build/html/
