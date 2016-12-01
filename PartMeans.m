function [pt1c1MeanCOH, pt2c1MeanCOH, pt3c1MeanCOH, pt4c1MeanCOH, pt5c1MeanCOH, pt1c2MeanCOH, pt2c2MeanCOH, pt3c2MeanCOH, pt1c1MeanCC, pt2c1MeanCC, pt3c1MeanCC, pt4c1MeanCC, pt5c1MeanCC, pt1c2MeanCC, pt2c2MeanCC, pt3c2MeanCC] = PartMeans(pt1c1COH, pt2c1COH, pt3c1COH, pt4c1COH, pt5c1COH, pt1c2COH, pt2c2COH, pt3c2COH, pt1c1CrossCor, pt2c1CrossCor, pt3c1CrossCor, pt4c1CrossCor, pt5c1CrossCor, pt1c2CrossCor, pt2c2CrossCor, pt3c2CrossCor)
%all of the subjects COH and CrossCor variables are used as inputs. Each of
%these trials for each calculation is plugged into the nanmean matlab
%function and places the mean in an individual variable to be graphed and
%further manipulated. There should be 16 inputs and 16 outputs for each
%participant.
pt1c1MeanCOH = nanmean(pt1c1COH); %using nanmean calculates the mean of the values while ignoring any NaN values
pt2c1MeanCOH = nanmean(pt2c1COH);
pt3c1MeanCOH = nanmean(pt3c1COH);
pt4c1MeanCOH = nanmean(pt4c1COH);
pt5c1MeanCOH = nanmean(pt5c1COH);
pt1c2MeanCOH = nanmean(pt1c2COH);
pt2c2MeanCOH = nanmean(pt2c2COH);
pt3c2MeanCOH = nanmean(pt3c2COH);
pt1c1MeanCC = nanmean(pt1c1CrossCor);
pt2c1MeanCC = nanmean(pt2c1CrossCor);
pt3c1MeanCC = nanmean(pt3c1CrossCor);
pt4c1MeanCC = nanmean(pt4c1CrossCor);
pt5c1MeanCC = nanmean(pt5c1CrossCor);
pt1c2MeanCC = nanmean(pt1c2CrossCor);
pt2c2MeanCC = nanmean(pt2c2CrossCor);
pt3c2MeanCC = nanmean(pt3c2CrossCor);

end

