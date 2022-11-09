close all;
clear all;
clc;

b=imread('Sample.jpg');
k=1;
for i=400:-1:1
    for j=1:600
        a(k)=b(i,j,1);
        a(k+1)=b(i,j,2);
        a(k+2)=b(i,j,3);
        k=k+3;
    end
end
fid =fopen('input.hex','wt');
fprintf(fid,'%x\n', a);
disp('Text file write done'); disp(' ');
fclose(fid);
