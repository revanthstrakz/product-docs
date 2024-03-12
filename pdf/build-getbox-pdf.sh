name=$(date "+%Y-%m-%d_%H%M%S_get-box")

mkdir -p build/$name

folder=build/$name

cp -r ../docs/get-box/* $folder/
cp template/template.typ $folder/
cp getbox.typ $folder/final.typ

cd $folder

pandoc --file-scope *.md -o raw.typ
luajit ../../block-remover.lua raw.typ
cat processed_raw.typ >> final.typ
typst c final.typ $name.pdf && echo PDF successfully created in ${folder}!