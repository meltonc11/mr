function [ imagCOH ] = imagcohCalc( COH )
%Subject COH data variable is used as an input and is taken through the built in matlab 
%imag function to produce the imaginary part of the coherence computed for all channels. 
%Then used abs to take the absolute value.  Finally the code takes the
%atan, or inverse tangent and save it as a imagCOH variable.
%variable through atan which normalizes the imaginary values.
COHlength = length(COH);
for i = 1:COHlength
imagCOH(i) = abs(imag(COH(i))); %calculate imaginary coherence
imagCOH(i) = atan(imagCOH(i)); %normalize the imaginary coherence
end
end

