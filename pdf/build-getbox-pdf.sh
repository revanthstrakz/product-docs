name=$(date "+%Y-%m-%d_%H%M%S_get-box")

mkdir -p build/$name

folder=build/$name

cp -r ../docs/get-box/* $folder/
cp template/template.typ $folder/
cp getbox.typ $folder/raw.typ

cd $folder

pandoc --file-scope *.md -t typst >> raw.typ

typst c raw.typ $name.pdf