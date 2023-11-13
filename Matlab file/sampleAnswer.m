function data = sampleAnswer(L,W,x,y)    
 
    [result,L1,L2,W1,W2,S_effect] = dataArrange (L,W,x,y); 
    n = numel(dataArrange (L,W,x,y)); %Return the number of elements of 1 x n matrix
    
    %Count the number of ways that can be accepted by condition: L1 + L2 = L and W1 + W2 = W 
    %Find the case that have max effective working area of each cases
    count = 0;
    for i = 1:n
        if (L1(i) + L2(i) == L && W1(i) + W2(i) == W)
            count = count+1;
            if (count == 1)
                maxS = S_effect(i);
            else
                if (S_effect(i) > maxS)
                    maxS = S_effect(i);
                end
            end
        end
    end
    if (count == 0)
       data = 0; %non-existing
       return;
    end
    
    %Find the case that have max effective working area
    L11 = zeros(count,1);
    L21 = zeros(count,1);
    W11 = zeros(count,1);
    W21 = zeros(count,1);
    S = zeros(count,1);
    result1 = zeros(count,1);
    
    %Return solution
    j = 1;
    for i = 1:n
        if ((S_effect(i) == maxS || S_effect(i) == 0) && (L1(i) + L2(i) == L && W1(i) + W2(i) == W))
            L11(j) = L1(i);
            L21(j) = L2(i);
            W11(j) = W1(i);
            W21(j) = W2(i);
            S(j) = S_effect(i);
            result1(j) = result(i);
            j = j+1;
        end
    end
    data = [result1,L11,L21,W11,W21,S];      
    %{
        Notice: after this loop, the value of j could smaller than value of
        count because it has more condition to show. That lead to in some cases, 
	output data has value like data(i,:) = [0 0 0 0 0 0];
	But the simuling function only show the data has integer value. 
    %}
    
    %Simulate the answer
    for i = 1:j-1
        %subplot(1,j-1,i); %can change it in to "figure" to plot many charts
        figure;
        if (j == 2)
            t = sprintf('Simulate answer');
        else
            t = sprintf('Simulate answer case %d',i);
        end
        title(t);
        simulateAnswer(data(i,2),data(i,3),data(i,4),data(i,5),x,y);
    end
 end               
                
                
                
                