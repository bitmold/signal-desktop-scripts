# Low Quality Signal Desktop Scripts 

Stuff for extracting convos and attachments from an unlinked Signal Desktop since it doesn't have a feature to backup your content anymore (or never ever did?)


## `attachments.sh`
Gives you an enormous unorganized folder of all of your attachments. Deletes all images that are 150x150 which is the dimension Signal uses for thumbnails, however if you have legit attachments these will go too. 

Quick and dirty way I was able to open my file browser and scroll through all my attachments. 

It's done yet, but I want to run fdupes on this folder so any attachments you sent multiple people will dissapear.

This script assumes you have ImageMagick installed.

Linux:
```sh
sudo apt install imagemagick
````
Mac:

```sh
brew install ghostscript
brew install imagemagick
```