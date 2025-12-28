% problem 2a: assembling elements with different number of nodes per 
% element 
Kglobal=zeros(10,10); 
nelem=4; %number of elements 
nnode=10; %number of nodes 
% for element 1 and 2 
k=3.15e04; 
%for element 1 
theta=pi/4; 
c=cos(theta);s=sin(theta); 
K1=k*[c*c c*s -c*c -c*s;c*s s*s -c*s -s*s;c*s s*s c*c c*s;-c*s -s*s c*s 
s*s]; 
dest1=[1 2 5 6]; 
%for element 2 
theta=-pi/4; 
c=cos(theta);s=sin(theta); 
K2=k*[c*c c*s -c*c -c*s;c*s s*s -c*s -s*s;c*s s*s c*c c*s;-c*s -s*s c*s 
s*s]; 
dest2=[1 2 3 4]; 
% for element 3 
K3 = 37500*[140 0 0 -70 -140 70;0 400 -60 0 60 -400;0 -60 100 0 -100 
60;-70 0 0 35 70 -35;... -140 60 -100 70 240 -130;70 -400 60 -35 -130 435]; 
dest3=[3 4 7 8 5 6]; 
%for element 4 
K4 = 37500*[100 0 -100 60 0 -60;0 35 70 -35 -70 0;-100 70 240 -130 -140 
60;... 
60 -35 -130 435 70 -400;0 -70 -140 70 140 0;-60 0 60 -400 0 400]; 
dest4=[3 4 9 10 7 8]; 
for ii=1:nelem 
if ii == 1 
Klocal=K1; 
dest=dest1; 
end 
if ii == 2 
Klocal=K2; 
dest=dest2; 
end 
if ii == 3 
Klocal=K3; 
dest=dest3; 
end 
if ii== 4 
Klocal=K4; 
dest=dest4; 
end    
% assemble Kglobal here 
c=dest; 
l=Klocal; 
Kglobal(c,c)=Kglobal(c,c)+l; 
end 
Kglobal
