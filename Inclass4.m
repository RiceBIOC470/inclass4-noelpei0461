%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 
answer a:

xx=rand(10,13);
yy=rand(9,7);

filename='random.txt';
fid=fopen(filename,'w');
fprintf(fid,'Random numbers 1\n');
dlmwrite('random.txt',xx,'-append');
fid=fopen(filename,'a')
fprintf(fid,'Random numbers 2\n');
dlmwrite('random.txt',yy,'-append');

answer b:
fid=fopen(filename)
for i=1:2
    tline=fgetl(fid)
    if ~ischar(tline),
        break;
    end
    disp(tline)
end

tarray=str2num(tline)
tarray

% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 
function output = ssum (tnum)
    A=sum(tnum);
    output = ge(A,10)
end
    
