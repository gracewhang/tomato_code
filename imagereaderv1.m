clc; clear all; %clear command window and clear all variables

[filename,path] = uigetfile('*.jpg', 'Select a file'); %select .jpg image file
fid=fullfile(path,filename); %grabs data of filename and path
[img,cmap] = imread(fid); %image read fuction reads the file selected
gray_image=rgb2gray(img); %takes the colored image and turns to gray scale


[x, y]=size(gray_image); %determines the pixel dimensions of the image; x=num of rows; y=num of columns
level=input('designate desired threshold level (1 for most threshold, 2 for medium, 3 for small threshold: ');


grayscale_array=0:255; %creates an array of all grayscale values from 0 to 255
%linspace(0,255,256) %can also use this designating 256 values between 0 and 255

if level==1
    a=0;
    b=128;
    c=256;
    
    
    for i=1:x  %for each pixel in row i
        for j=1:y %for each pixel in column j in row i
            
            if  gray_image(i,j)<b
                gray_image(i,j)=a;
                
            elseif gray_image(i,j)>=b && gray_image(i,j)<c %if the grayscale value is >= 43 but less than 85
                gray_image(i,j)=b;
                
            elseif gray_image(i,j)>=c && gray_image(i,j)<d
                gray_image(i,j)=255;
                
            end
        end
    end
    
elseif level==2
    a=0;
    b=51;
    c=102;
    d=153;
    e=204;
    f=256; %256 included such that 255 is captured in <256 elseif statement
    
    for i=1:x  %for each pixel in row i
        for j=1:y %for each pixel in column j in row i
            
            if  gray_image(i,j)<b
                gray_image(i,j)=a;
                
            elseif gray_image(i,j)>=b && gray_image(i,j)<c %if the grayscale value is >= 43 but less than 85
                gray_image(i,j)=b;
                
            elseif gray_image(i,j)>=c && gray_image(i,j)<d
                gray_image(i,j)=c;
                
            elseif gray_image(i,j)>=d && gray_image(i,j)<e
                gray_image(i,j)=d;
                
            elseif gray_image(i,j)>=e && gray_image(i,j)<f
                gray_image(i,j)=255;
                
                
            end
        end
    end
    
    
elseif level==3
    a=0;
    b=32;
    c=64;
    d=96;
    e=128;
    f=160;
    g=192;
    h=224;
    i=256;
    
    
    for i=1:x  %for each pixel in row i
        for j=1:y %for each pixel in column j in row i
            
            if  gray_image(i,j)<b
                gray_image(i,j)=a;
                
            elseif gray_image(i,j)>=b && gray_image(i,j)<c %if the grayscale value is >= 43 but less than 85
                gray_image(i,j)=b;
                
            elseif gray_image(i,j)>=c && gray_image(i,j)<d
                gray_image(i,j)=c;
                
            elseif gray_image(i,j)>=d && gray_image(i,j)<e
                gray_image(i,j)=d;
                
            elseif gray_image(i,j)>=e && gray_image(i,j)<f
                gray_image(i,j)=e;
                
            elseif gray_image(i,j)>=f && gray_image(i,j)<g
                gray_image(i,j)=f;
                
            elseif gray_image(i,j)>=g && gray_image(i,j)<h
                gray_image(i,j)=g;
                
            elseif gray_image(i,j)>=h && gray_image(i,j)<i
                gray_image(i,j)=h;
                
            elseif gray_image(i,j)>=i && gray_image(i,j)<j
                gray_image(i,j)=255;
                
            end
        end
    end
    
    
else
    level=input('Error. Please re-enter value for desired intensity (options are 1,2, or 3): ');
end

     



figure
imshow(img);
figure
imshow(gray_image);

