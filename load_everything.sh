wget "https://drive.google.com/uc?export=download&id=1nNB-MHGkVLWj1zlOcsDVGzyhkrsvw7UY" -O './DM-GAN+CL/models/netG_epoch_200.pth'

python google_drive.py 1rSnbIGNDGZeHlsUlLdahj0RJ9oo6lgH9 ./DM-GAN+CL/data/coco.zip
unzip ./DM-GAN+CL/data/coco.zip ./DM-GAN+CL/data/
