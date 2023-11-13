Introduction: this project is made by Tran Duy Thanh - from Bach Khoa HCMUT
References folder store 2 files about arrange algorithm that I mentioned
Matlab folder store all my code, the description bellow:

1/ Detail of all programs
    1.1/checkOverlap.m
        *Input: L1,L2,W1,W2 in order
        *Output:
            +1: non-overlap
            +13: block 1 and block 3 are overlaped
            +24: block 2 and block 4 are overlaped
    1.2/dataArrange.m
        *Input: L,W,x,y in order
        *Output:
            List of data: [result,L1,L2,W1,W2,S_effect]
            +result: take from "checkOverlap.m" file
            +L1,L2,W1,W2: all solutions (non check condition about L1 + L2 = L and W1 + W2 = W)
            +S_effect: 
                -0: overlap/no empty spaces -> error
                -Area of 4 blocks: it's a integer number with equation
    1.3/sampleAnswer.m - also the main program
        *Input: L1,L2,W1,W2 in order
        *Output is data and simuling of drawing
        1.3.1/Type of output data
            data = [result1,L11,L21,W11,W21,S] if the problem has solutions
            data = 0 if the problem do not have solution
        1.3.2/Type of output simuling
            First, it has input = L1,L2,W1,W2,x,y in order (take from output data or from your input)
            Second, you can use it with main program or single 
        Notice: if you use with main program, if the output has many answer, it would lead to many figure of cases
    1.4/simulateAnswer.m
        Like part 1.3.2
    1.5/testcase.m
        The program will generate testcase with limit some variables such as: L,W,x,y and using the main program 
    to display all the test case has solution to Command Window with data and simuling
        Notice: because the main program is inside "testcase.m", then you should be becareful before running that
    (you can fix again the limitation)
    1.6/testDrawingRectangle.m
        It's just a file that testing multi cases about drawing Rectangle, it's not including in main program
    (It's version 2 of program "simulateAnswer.m")
   
2/ Some examples about output data

    *Input1:
        L = 26;
        W = 18;
        x = 6;
        y = 4;
    *Output1:
        [1,6,20,6,12,384;
        24,8,18,12,6,0]

    *Input2:
        L = 27;
        W = 22;
        x = 6;
        y = 5;
    *Output2:
        [24,12,15,12,10,0]

    *Input3:
        L = 26;
        W = 20;
        x = 6;
        y = 4;
    *Output3:
        [24,6,20,12,8,0;
        1,18,8,12,8,480]
