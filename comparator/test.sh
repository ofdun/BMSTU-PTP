#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
CLEAR='\033[0;30m'

runTest() {
    testNumber=$1
    exitCode=$2
    $(./comparator2.sh tests/$testNumber/1.txt tests/$testNumber/2.txt)
    if [ "$?" -ne $exitCode ]; then
        echo -e "${RED}FAIL!${GREEN}"
    else
        echo -e "SUCCESS!"
    fi
}

echo -e "${GREEN}Тест 1: Сравнение идентичных строк, начинающихся с 'string:'"
runTest 1 0

echo "Тест 2: Сравнение идентичных строк, неначинающихся на 'string:'"
runTest 2 0

echo "Тест 3: Сравнение идентичных текстов, с 2 строками"
runTest 3 0

echo "Тест 4: Сравнение идентичных текстов, содержащих несколько 'string:'"
runTest 4 0

echo "Тест 5: Сравнение неидентичных текстов, содержащих идентичный текст после 'string:' с несколькими строками"
runTest 5 0

echo "Тест 6: Сравнение неидентичных текстов"
runTest 6 3

echo "Тест 7: Сравнение одинаковых текстов с разным кол-вом пустых строк"
runTest 7 3

echo "Тест 8: Сравнение текстов с разным кол-вом пробелов после 'string:'"
runTest 8 3

echo "Тест 9: Сравнения текстов, где нет 'string:'"
runTest 9 5

echo -e "$CLEAR"