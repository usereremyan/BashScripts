#!/bin/bash
#Пример программы для фаззинг-тестирование
foo_login(){
fail="Operation failed with code $1"
login="b"
for((;;)) 
do 
login="$login"b
if !(./MZP -a -u $login -p admin > file_error)
then 
 error=$(<file_error)
 if [ "$error" == "$fail" ]
 then 
 echo $login > file
 echo "Нужно ввести ` wc -c < file` символов,чтобы получить ошибку: $fail"
 break
 fi
fi
done
}
foo_login 2 
foo_login 36
