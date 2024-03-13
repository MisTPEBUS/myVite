#!/usr/bin/env sh

# 发生错误时终止
set -e

# 构建
npm run build

# 进入构建文件夹
cd dist

# 如果你要部署到自定义域名
# echo 'www.example.com' > CNAME

git init
git checkout -B main
git add -A
git commit -m 'deploy'

#部署到main分支是使用這段
# 如果你要部署在 https://MisTPEBUS.github.io
# git push -f git@github.com:MisTPEBUS/MisTPEBUS.github.io.git main

#部署到gh-pages使用這段，不熟悉的話建議使用這個
# 如果你要部署在 https://MisTPEBUS.github.io/<REPO>
git push -f git@github.com:MisTPEBUS/staticVite.git main:gh-page

cd -