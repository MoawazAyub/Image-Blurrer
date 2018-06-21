% expecting MATIXB matrix

[A,B] = size(MATRIXB);

TEMP = zeros (A+2,B+2);

I1 = 2;
J1 = 2;

for I = 1:1:A

J1 = 2;
	for J = 1:1:B
	
	
	
	TEMP(I1,J1) = MATRIXB(I,J);
	
	J1 = J1 + 1;
	end
I1 = I1 + 1;
end