function [ COH ] = cohCalc( Data )
%Subject data is used as an input and is taken through the built in matlab 
%cpsd function to produce cross power spectral density components of the
%data and then is placed into a calculation to determine COH values for
%each of the channels.
for i = 2:69 % 69 channels are represented in 69 rows of the data section of the participants variables
PXX = cpsd(Data.data(i,:),Data.data(i,:));
PYY = cpsd(Data.data(i-1,:),Data.data(i-1,:));
PXY = cpsd(Data.data(i,:),Data.data(i-1,:));
end
Psize = size(PXX);
for i = 1:Psize
COH(i) = PXY(i).*conj(PXY(i))./(PXX(i).*PYY(i));
end

end

