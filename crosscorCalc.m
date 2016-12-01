function [ CrossCor ] = crosscorCalc( Data )
%Subject data is used as an input and is taken through the built in matlab 
%xcorr function to produce cross-correlational values for all 69 channels as 
%the CrossCor variables
for i=2:69
    CrossCor=xcorr(Data.data(i,:), Data.data(i-1,:));
end
end

