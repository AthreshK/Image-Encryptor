image=imread('image.jpg');
image=im2double(image);
layer1=image(:,:,1);
layer2=image(:,:,2);
layer3=image(:,:,3);
key=imread('key.jpg');
key=im2double(key);
key1=key(:,:,1);
key2=key(:,:,2);
key3=key(:,:,3);
layer1=key1*layer1;
layer2=key2*layer2;
layer3=key3*layer3;
final(:,:,1)=layer1(:,:,1)
final(:,:,2)=layer2(:,:,1)
final(:,:,3)=layer3(:,:,1)
final=final/100;
figure (1);
imshow(image)
figure (2)
imshow(final)
DestinationDir='*Insert destination*';
imwrite(final,strcat(DestinationDir,'EncrytedImage.jpg'));
save(strcat(DestinationDir,'Encrypted.mat'),'final');