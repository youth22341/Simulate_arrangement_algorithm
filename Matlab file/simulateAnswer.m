%Simulate the result with input: L1,L2,W1,W2,x,y
function chart = simulateAnswer(L1,L2,W1,W2,x,y)
    %Block 1
    for i = 1:L1/x
        rectangle('Position',[(i-1)*x 0 x W2],'FaceColor','b');
    end
    %Block 2
    for i = 1:L2/y
        rectangle('Position',[L1+(i-1)*y 0 y W1],'FaceColor','g');
    end   
    %Block 3
    for i = 1:L1/x
        rectangle('Position',[L2+(i-1)*x W1 x W2],'FaceColor','b');
    end
    %Block 4
    for i = 1:L2/y
        rectangle('Position',[(i-1)*y W2 y W1],'FaceColor','g');
    end  
    axis equal;
end
