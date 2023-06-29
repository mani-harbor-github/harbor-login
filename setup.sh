find . -iname "*.java" > ./cscope.files
cscope -cb
ctags --fields=+i -n -L ./cscope.files
cqmakedb -s ./myproject.db -c ./cscope.out -t ./tags -p
