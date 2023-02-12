cp -rv ~/.config/Signal/attachments.noindex/ .
cd attachments.noindex 
# collapse all files into one big directory 
find . -mindepth 2 -type f -print -exec mv {} . \;
# now delete all empty subdirs 
find . -type d -empty -delete
cd ..
mv attachments.noindex attachments
cd attachments
# now remove 150x150 thumbnails, but also attachments if they
# are that size ...
for i in *; 
do size=($(identify -format "%wx%h" "$i"));  
if [ "$size" = "150x150" ]; then
    rm $i
fi
done 

# todo run dupes or smtn, delete duplicate attachments (sent to multiple ppl)