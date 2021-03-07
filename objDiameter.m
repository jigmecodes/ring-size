%% @author jigmetoby
>>  
>> %display image by uploading
>> pic = imread('ring.png');
>> imshow(pic)
>>  
>> %image segmention 
>> %object needs to be divided into RGB intensities
>> red = pic(:,:,1);
>> green = pic(:,:,2);
>> blue = pic(:,:,3);
>> 
>> figure(1)
>> subplot(2,2,1); imshow(pic); title('Raw Picture');
>> subplot(2,2,2); imshow(red); title('Red Plane');
>> subplot(2,2,3); imshow(green); title('Green Plane');
>> subplot(2,2,4); imshow(blue); title('Blue Plane');
>> 
>> %Thresholding the blue pane
>> figure(2)
>> level = 0.37;
>> bw2 = im2bw(blue,level);
>> subplot(2,2,1); imshow(bw2); title('Blue plane threshold');
>>
>> %If object in image is white, removing blobs and noise is required. 
>>  
>> %Follow below steps to remove noise:
>> %fill = imfill(bw2, 'holes');
>> subplot(2,2,2); imshow(fill); title('Holes filled');
>>
>> %Follow steps below to remove blobs:
>> %clear = imclearborder(fill);
>> %subplot(2,2,3); imshow(clear); title('removed blobs');
>>  
>>%Getting the diameter
>> diameter = regionprops(bw2, 'MajorAxislength')
>> displaying raw picture with a line to show diameter
>> figure(3)
>> imshow(pic)
>> d = imdistline;
