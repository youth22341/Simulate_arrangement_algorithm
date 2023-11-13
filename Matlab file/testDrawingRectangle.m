L1 = 20; L2 = 6; W1 = 8; W2 = 12;
%draw rectangle with L1,L2,W1,W2 with color
figure;
rectangle('Position',[0 0 L1 W2],'FaceColor','b');
rectangle('Position',[L1 0 L2 W1]);
rectangle('Position',[L2 W1 L1 W2],'FaceColor','b');
rectangle('Position',[0 W2 L2 W1]);
axis([0,L1+L2,0,W1+W2]);
axis equal;

%plot 1 figure with multi cases
m = 2; n = 3;
figure;
for i = 1:5
    subplot(m,n,i);
    rectangle('Position',[0 0 L1 W2]);
    rectangle('Position',[L1 0 L2 W1]);
    rectangle('Position',[L2 W1 L1 W2]);
    rectangle('Position',[0 W2 L2 W1]);
    axis([0,L1+L2,0,W1+W2]);
    axis equal;
end

%draw Rectangle with L1,L2,W1,W2,x,y
L1 = 6; L2 = 20; W1 = 12; W2 = 8; x = 6; y = 4;
figure;
for i = 1:L1/x
    rectangle('Position',[(i-1)*x 0 x W2],'FaceColor','b');
end

for i = 1:L2/y
    rectangle('Position',[L1+(i-1)*y 0 y W1],'FaceColor','g');
end   

for i = 1:L1/x
    rectangle('Position',[L2+(i-1)*x W1 x W2],'FaceColor','b');
end

for i = 1:L2/y
    rectangle('Position',[(i-1)*y W2 y W1],'FaceColor','g');
end  

axis equal
