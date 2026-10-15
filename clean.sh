bkup="/tmp/backup/$(date +D%d.%m.%Y.T%H.%M.%S.%N)"
mkdir -p "$bkup"

cp -rf * "$bkup"
echo "backup files copied to : $bkup"

find . -type f -name "*.b#*" 2>/dev/null | while read line
do
    echo "Deleting $line"
    rm "$line"
done

find . -type f -name "*.s#*" 2>/dev/null | while read line
do
    echo "Deleting $line"
    rm "$line"
done

