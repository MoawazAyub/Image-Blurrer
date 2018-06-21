%   expecting I1 and J1 index and MATRIXB and neighbourhood size (NHOOD)

S = NHOOD - uint8(NHOOD/2);

%M1 = zeros(NHOOD,NHOOD);

I2 = I1 - S;
J2 = J1 - S;

M1 = 0;
M1 = double(M1);
M1 = MATRIXB(I2:(I2+(NHOOD-1)), J2:(J2 + (NHOOD-1)));

MEAN = mean(M1(:));
VAR  = var(M1(:));

