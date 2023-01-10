if test -f "$FILE"; then
    for i in {1..3}; do
        echo "Pass $i/3"
        RAND=$(echo $RANDOM | md5sum | head -c 20)
        echo $RAND > $1
    done
    rm -rf $1
else
    echo "File does not exist"
fi