load('Encrypted.mat');
image = final * 100;
layer = [image(:,:,1) image(:,:,2) image(:,:,3)]
key = im2double(imread('key.jpg'));
key = [key(:,:,1) key(:,:,2) key(:,:,3)]
layer = [inv(key[1] * layer[1]) inv(key[2] * layer[2]) inv(key[2] * layer[2])]
final(:,:,1) = layer[1]
final(:,:,2) = layer[2]
final(:,:,3) = layer[3]
imshow(final);
DestinationDir='*Insert destination*';
imwrite(final,strcat(DestinationDir,'DecryptedImage.jpg'));
