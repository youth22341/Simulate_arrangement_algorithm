function result = checkOverlap (L1,L2,W1,W2)
    if (L1 > L2)
        if (W1 >= W2)
            result = 1; %non-overlap
        else
            result = 13; %block 1,3 are overlaped
        end
    else
        if (W1 <= W2)
            result = 1; %non-overlap
        else
            result = 24; %block 2,4 are overlaped
        end
    end
end