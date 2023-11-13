function [result,L1,L2,W1,W2,S_effect] = dataArrange (L,W,x,y)
    %Variable
    mStop = round((L-y)/x);
    nStop = round((L-x)/y);
    m1Stop = round((W-y)/x);
    n1Stop = round((W-x)/y);
    num = mStop*nStop*m1Stop*n1Stop;
    L1 = zeros(1,num);
    L2 = zeros(1,num);
    W1 = zeros(1,num);
    W2 = zeros(1,num);
    S_effect = zeros(1,num);
    result = zeros(1,num);
    
    j = 1;
    for m = 1:mStop
        for n = 1:nStop
            for m1 = 1:m1Stop
                for n1 = 1:n1Stop
                    L1(j) = m*x;
                    L2(j) = n*y;
                    W1(j) = m1*x;
                    W2(j) = n1*y;
                    result(j) = checkOverlap(L1(j),L2(j),W1(j),W2(j));
                    S_effect(j) = 2*L1(j)*W2(j) + 2*L2(j)*W1(j);
                    if (result(j) ~= 1 || S_effect(j) == (L1(j)+L2(j))*(W1(j)*W2(j)))
                        %In case S_effect(j) == (L1(j)+L2(j))*(W1(j)*W2(j)) mean that 
                        %there is no spaces after arranging 4 blocks
                        S_effect(j) = 0; %error
                    end
                    j = j+1;  
                end  
            end
        end
    end
end


