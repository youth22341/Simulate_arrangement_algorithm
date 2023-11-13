%%Random testcase and sample answer
%%Your work is starting from here   
    
    %Limit of some variables, you can change them
    minL = 10;
    maxL = 50;
    minW = 10;
    maxW = 50;
    minX = 4;
    maxX = 20;
    minY = 4;
    maxY = 20;
    
    %Count the number of valid testcases
    count = 1;
    for L1 = minL:maxL
        for W1 = minW:maxW
            for x1 = minX:maxX
                for y1 = minX:maxY
                    if (sampleAnswer(L1,W1,x1,y1) ~= 0)
                        count = count+1;
                    end
                end
            end
        end
    end
    
    %Save vaild testcase
    count = 1;
    for L1 = minL:maxL
        for W1 = minW:maxW
            for x1 = minX:maxX
                for y1 = minX:maxY
                    if (sampleAnswer(L1,W1,x1,y1) ~= 0)
                        fprintf("Test case %d: x = %d, y = %d, L = %d, W = %d\n",count,x1,y1,L1,W1);
                        data = sampleAnswer(L1,W1,x1,y1);
                        fprintf("Sample answer:\n\t\tresult\t\tL1\t\tL2\t\tW1\t\tW2\t\tS\n");
                        disp(data);
                        if(count == 1)
                            fprintf("+------------------------------------------------+\n");
                        else
                            fprintf("\n+--------------------------------------------------+\n");
                        end
                        count = count+1;
                    end
                end
            end
        end
    end