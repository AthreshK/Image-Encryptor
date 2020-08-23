image=im2double(imread('image.jpg'));
layer = [image(:,:,1) image(:,:,2) image(:,:,3)]
key = im2double(imread('key.jpg'))
key = [key(:,:,1) key(:,:,2) key(:,:,3)]
layer = [key[1]*layer[1] key[2]*layer[2] key[3]*layer[3]]
final(:,:,1)=layer[1]
final(:,:,2)=layer[2]
final(:,:,3)=layer[3]
final=final/100;
figure (1);
imshow(image)
figure (2)
imshow(final)
DestinationDir='*Insert destination*';
imwrite(final,strcat(DestinationDir,'EncrytedImage.jpg'));
save(strcat(DestinationDir,'Encrypted.mat'),'final');
