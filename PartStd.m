function [pt1c1StdCOH, pt2c1StdCOH, pt3c1StdCOH, pt4c1StdCOH, pt5c1StdCOH, pt1c2StdCOH, pt2c2StdCOH, pt3c2StdCOH, pt1c1StdCC, pt2c1StdCC, pt3c1StdCC, pt4c1StdCC, pt5c1StdCC, pt1c2StdCC, pt2c2StdCC, pt3c2StdCC] = PartStd(pt1c1COH, pt2c1COH, pt3c1COH, pt4c1COH, pt5c1COH, pt1c2COH, pt2c2COH, pt3c2COH, pt1c1CrossCor, pt2c1CrossCor, pt3c1CrossCor, pt4c1CrossCor, pt5c1CrossCor, pt1c2CrossCor, pt2c2CrossCor, pt3c2CrossCor)
%all of the subjects COH and CrossCor variables are used as inputs. Each of
%these trials for each calculation is plugged into the nanstd matlab
%function and places the standard deviation in an individual variable to be graphed and
%further manipulated. There should be 16 inputs and 16 outputs for each
%participant.
pt1c1StdCOH = nanstd(pt1c1COH); %using nanstd calculates the standard deviation of the values while ignoring any NaN values
pt2c1StdCOH = nanstd(pt2c1COH);
pt3c1StdCOH = nanstd(pt3c1COH);
pt4c1StdCOH = nanstd(pt4c1COH);
pt5c1StdCOH = nanstd(pt5c1COH);
pt1c2StdCOH = nanstd(pt1c2COH);
pt2c2StdCOH = nanstd(pt2c2COH);
pt3c2StdCOH = nanstd(pt3c2COH);
pt1c1StdCC = nanstd(pt1c1CrossCor);
pt2c1StdCC = nanstd(pt2c1CrossCor);
pt3c1StdCC = nanstd(pt3c1CrossCor);
pt4c1StdCC = nanstd(pt4c1CrossCor);
pt5c1StdCC = nanstd(pt5c1CrossCor);
pt1c2StdCC = nanstd(pt1c2CrossCor);
pt2c2StdCC = nanstd(pt2c2CrossCor);
pt3c2StdCC = nanstd(pt3c2CrossCor);
end

