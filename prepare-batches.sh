MEDIA_PATH=$1
if [ -z $MEDIA_PATH ]; then
    MEDIA_PATH=/media/benlowry/MEDIA
fi
echo "$MEDIA_PATH"
for folder in concerts workouts; do
    if [ -f "$folder.txt" ]; then
        rm $folder.txt
    fi
    echo "folder $folder"
    for entity in `ls ./$folder/ | grep -v -e mp4`; do
        echo "person $entity"
        for file in `ls $folder/$entity/`; do
            echo "$file | $entity | $folder"
            existing=`ls $folder/"*$file.mp4" 2> /dev/null`
            if [ -z $existing ]; then
                echo "https://www.youtube.com/watch?v=$file" >> $folder.txt
            else 
                echo skip existing $file
            fi
        done
    done
done
