%% Start eeglab
run eeglab
%% Import each trial and assign to a variable
% import participant 1 information
p1t1c1 = loadcnt('Acquisition 138 Data.cnt');
file = exist('p1t1c1'); %checks that the file was added as a variable into the workspace
while file == 1 %checks that the file is a variable then runs the rest of the code
p1t2c1 = pop_loadcnt('Acquisition 139 Data.cnt');
p1t3c1 = pop_loadcnt('Acquisition 140 Data.cnt');
p1t4c1 = pop_loadcnt('Acquisition 141 Data.cnt');
p1t5c1 = pop_loadcnt('Acquisition 142 Data.cnt');
EEG = pop_loadcnt('Acquisition 290 Data.cnt');%manually will have to go look at event information to find the latencies to separate the data into separate files. each participant has a different number of video stimuli so it has to be manual
% import participant 2 information
p2t1c1 = pop_loadcnt('Acquisition 154 Data.cnt');
p2t2c1 = pop_loadcnt('Acquisition 155 Data.cnt');
p2t3c1 = pop_loadcnt('Acquisition 156 Data.cnt');
p2t4c1 = pop_loadcnt('Acquisition 157 Data.cnt');
p2t5c1 = pop_loadcnt('Acquisition 158 Data.cnt');
EEG(:,2) = pop_loadcnt('Acquisition 284 Data.cnt');
% import participant 3 information
p3t1c1 = pop_loadcnt('Acquisition 120 Data.cnt');
p3t2c1 = pop_loadcnt('Acquisition 122 Data.cnt');
p3t3c1 = pop_loadcnt('Acquisition 123 Data.cnt');
p3t4c1 = pop_loadcnt('Acquisition 125 Data.cnt');
p3t5c1 = pop_loadcnt('Acquisition 127 Data.cnt');
EEG(:,3) = pop_loadcnt('Acquisition 279 Data.cnt');
% import participant 4 information
p4t1c1 = pop_loadcnt('Acquisition 143 Data.cnt');
p4t2c1 = pop_loadcnt('Acquisition 144 Data.cnt');
p4t3c1 = pop_loadcnt('Acquisition 145 Data.cnt');
p4t4c1 = pop_loadcnt('Acquisition 146 Data.cnt');
p4t5c1 = pop_loadcnt('Acquisition 147 Data.cnt');
EEG(:,4) = pop_loadcnt('Acquisition 288 Data.cnt');
% import participant 5 information
p5t1c1 = pop_loadcnt('Acquisition 148 Data.cnt');
p5t2c1 = pop_loadcnt('Acquisition 149 Data.cnt');
p5t3c1 = pop_loadcnt('Acquisition 151 Data.cnt');
p5t4c1 = pop_loadcnt('Acquisition 152 Data.cnt');
p5t5c1 = pop_loadcnt('Acquisition 153 Data.cnt');
EEG(:,5) = pop_loadcnt('Acquisition 287 Data.cnt');
% import participant 6 information
p6t1c1 = pop_loadcnt('Acquisition 98 Data.cnt');
p6t2c1 = pop_loadcnt('Acquisition 103 Data.cnt');
p6t3c1 = pop_loadcnt('Acquisition 107 Data.cnt');
p6t4c1 = pop_loadcnt('Acquisition 111 Data.cnt');
p6t5c1 = pop_loadcnt('Acquisition 115 Data.cnt');
EEG(:,6) = pop_loadcnt('Acquisition 283 Data.cnt');
%% separate data using event information from the original upload for the post intervention acquisitions because all trials are in one file
% participant 1 separation
p1c2lat = {EEG(1).event.latency}; %take the first to the third, the third to the fifth, and the fifth to the seventh number
% each event indicates the start of a new choreography video. this participant has two videos for each trial.
p1t1c2 = pop_loadcnt; %load acquisition 290 %using the event info from the eeg variable to find the video lengths and separate each trial into separate variables
% cut data between 50 & 814 sec %based on acquisition 290 event info
% Obviously in real situation I will have to go and look at the p1c2lat
% values to figure out where to cut the file, but for this project I
% commented it out for you just in case. 
p1t2c2 = pop_loadcnt;
% cut data between 814 & 1577.4 sec %based on acquisition 290 event info
p1t3c2 = pop_loadcnt;
% cut data between 1577.4 & 2340.7 sec %based on acquisition 290 event info
% participant 2 separation
p2c2lat = {EEG(2).event.latency};
p2t1c2 = pop_loadcnt; %load acquisition 284
% cut data between 10 & 811.4 sec
p2t2c2 = pop_loadcnt;
% cut data between 811.5 & 1611.1 sec
p2t3c2 = pop_loadcnt;
% cut data between 1611.1 & 2410.7 sec
% participant 3 separation
p3c2lat = {EEG(3).event.latency};
p3t1c2 = pop_loadcnt; %load acquisition 279
% cut data between 20 & 623.5 sec
p3t2c2 = pop_loadcnt;
% cut data between 623.5 & 1226.6 sec 
p3t3c2 = pop_loadcnt;
% cut data between 1226.6 & 1829 sec
% participant 4 separation
p4c2lat = {EEG(4).event.latency};
p4t1c2 = pop_loadcnt; %load acquisition 288
% cut data between 8.9 & 809 sec
p4t2c2 = pop_loadcnt;
% cut data between 809 & 1608.8 sec
p4t3c2 = pop_loadcnt;
% cut data between 1608.8 & 2408.7 sec
% participant 5 separation
p5c2lat = {EEG(5).event.latency};
p5t1c2 = pop_loadcnt; %load acquisiont 287
% cut data between 16.6 & 285 sec
p5t2c2 = pop_loadcnt;
% cut data between 285 & 553.6 sec
p5t3c2 = pop_loadcnt;
% cut data between 553.6 & 822 sec
% participant 6 separation
p6c2lat = {EEG(6).event.latency};
p6t1c2 = pop_loadcnt; %load acquisition 283
% cut data between 8.8 & 656.5 sec
p6t2c2 = pop_loadcnt;
% cut data between 656.5 & 1303.6 sec
p6t3c2 = pop_loadcnt;
% cut data between 1303.6 & 1950.6 sec
%% Calculate Coherence of epochs using function
% participant 1 coherence calculations
[p1t1c1COH] = cohCalc(p1t1c1);
[p1t2c1COH] = cohCalc(p1t2c1);
[p1t3c1COH] = cohCalc(p1t3c1);
[p1t4c1COH] = cohCalc(p1t4c1);
[p1t5c1COH] = cohCalc(p1t5c1);
[p1t1c2COH] = cohCalc(p1t1c2);
[p1t2c2COH] = cohCalc(p1t2c2);
[p1t3c2COH] = cohCalc(p1t3c2);
% participant 2 coherence calculations
[p2t1c1COH] = cohCalc(p2t1c1);
[p2t2c1COH] = cohCalc(p2t2c1);
[p2t3c1COH] = cohCalc(p2t3c1);
[p2t4c1COH] = cohCalc(p2t4c1);
[p2t5c1COH] = cohCalc(p2t5c1);
[p2t1c2COH] = cohCalc(p2t1c2);
[p2t2c2COH] = cohCalc(p2t2c2);
[p2t3c2COH] = cohCalc(p2t3c2);
% participant 3 coherence calculations
[p3t1c1COH] = cohCalc(p3t1c1);
[p3t2c1COH] = cohCalc(p3t2c1);
[p3t3c1COH] = cohCalc(p3t3c1);
[p3t4c1COH] = cohCalc(p3t4c1);
[p3t5c1COH] = cohCalc(p3t5c1);
[p3t1c2COH] = cohCalc(p3t1c2);
[p3t2c2COH] = cohCalc(p3t2c2);
[p3t3c2COH] = cohCalc(p3t3c2);
% participant 4 coherence calculations
[p4t1c1COH] = cohCalc(p4t1c1);
[p4t2c1COH] = cohCalc(p4t2c1);
[p4t3c1COH] = cohCalc(p4t3c1);
[p4t4c1COH] = cohCalc(p4t4c1);
[p4t5c1COH] = cohCalc(p4t5c1);
[p4t1c2COH] = cohCalc(p4t1c2);
[p4t2c2COH] = cohCalc(p4t2c2);
[p4t3c2COH] = cohCalc(p4t3c2);
% participant 5 coherence calculations
[p5t1c1COH] = cohCalc(p5t1c1);
[p5t2c1COH] = cohCalc(p5t2c1);
[p5t3c1COH] = cohCalc(p5t3c1);
[p5t4c1COH] = cohCalc(p5t4c1);
[p5t5c1COH] = cohCalc(p5t5c1);
[p5t1c2COH] = cohCalc(p5t1c2);
[p5t2c2COH] = cohCalc(p5t2c2);
[p5t3c2COH] = cohCalc(p5t3c2);
% participant 6 coherence calculations
[p6t1c1COH] = cohCalc(p6t1c1);
[p6t2c1COH] = cohCalc(p6t2c1);
[p6t3c1COH] = cohCalc(p6t3c1);
[p6t4c1COH] = cohCalc(p6t4c1);
[p6t5c1COH] = cohCalc(p6t5c1);
[p6t1c2COH] = cohCalc(p6t1c2);
[p6t2c2COH] = cohCalc(p6t2c2);
[p6t3c2COH] = cohCalc(p6t3c2);
%% Calculate and Normalize Imaginary Coherence
% participant 1 imaginary coherence calculations
[p1t1c1imagCOH] = imagcohCalc(p1t1c1COH);
[p1t2c1imagCOH] = imagcohCalc(p1t2c1COH);
[p1t3c1imagCOH] = imagcohCalc(p1t3c1COH);
[p1t4c1imagCOH] = imagcohCalc(p1t4c1COH);
[p1t5c1imagCOH] = imagcohCalc(p1t5c1COH);
[p1t1c2imagCOH] = imagcohCalc(p1t1c2COH);
[p1t2c2imagCOH] = imagcohCalc(p1t2c2COH);
[p1t3c2imagCOH] = imagcohCalc(p1t3c2COH);
% participant 2 imaginary coherence calculations
[p2t1c1imagCOH] = imagcohCalc(p2t1c1COH);
[p2t2c1imagCOH] = imagcohCalc(p2t2c1COH);
[p2t3c1imagCOH] = imagcohCalc(p2t3c1COH);
[p2t4c1imagCOH] = imagcohCalc(p2t4c1COH);
[p2t5c1imagCOH] = imagcohCalc(p2t5c1COH);
[p2t1c2imagCOH] = imagcohCalc(p2t1c2COH);
[p2t2c2imagCOH] = imagcohCalc(p2t2c2COH);
[p2t3c2imagCOH] = imagcohCalc(p2t3c2COH);
% participant 3 imaginary coherence calculations
[p3t1c1imagCOH] = imagcohCalc(p3t1c1COH);
[p3t2c1imagCOH] = imagcohCalc(p3t2c1COH);
[p3t3c1imagCOH] = imagcohCalc(p3t3c1COH);
[p3t4c1imagCOH] = imagcohCalc(p3t4c1COH);
[p3t5c1imagCOH] = imagcohCalc(p3t5c1COH);
[p3t1c2imagCOH] = imagcohCalc(p3t1c2COH);
[p3t2c2imagCOH] = imagcohCalc(p3t2c2COH);
[p3t3c2imagCOH] = imagcohCalc(p3t3c2COH);
% participant 4 imaginary coherence calculations
[p4t1c1imagCOH] = imagcohCalc(p4t1c1COH);
[p4t2c1imagCOH] = imagcohCalc(p4t2c1COH);
[p4t3c1imagCOH] = imagcohCalc(p4t3c1COH);
[p4t4c1imagCOH] = imagcohCalc(p4t4c1COH);
[p4t5c1imagCOH] = imagcohCalc(p4t5c1COH);
[p4t1c2imagCOH] = imagcohCalc(p4t1c2COH);
[p4t2c2imagCOH] = imagcohCalc(p4t2c2COH);
[p4t3c2imagCOH] = imagcohCalc(p4t3c2COH);
% participant 5 imaginary coherence calculations
[p5t1c1imagCOH] = imagcohCalc(p5t1c1COH);
[p5t2c1imagCOH] = imagcohCalc(p5t2c1COH);
[p5t3c1imagCOH] = imagcohCalc(p5t3c1COH);
[p5t4c1imagCOH] = imagcohCalc(p5t4c1COH);
[p5t5c1imagCOH] = imagcohCalc(p5t5c1COH);
[p5t1c2imagCOH] = imagcohCalc(p5t1c2COH);
[p5t2c2imagCOH] = imagcohCalc(p5t2c2COH);
[p5t3c2imagCOH] = imagcohCalc(p5t3c2COH);
% participant 6 imaginary coherence calculations
[p6t1c1imagCOH] = imagcohCalc(p6t1c1COH);
[p6t2c1imagCOH] = imagcohCalc(p6t2c1COH);
[p6t3c1imagCOH] = imagcohCalc(p6t3c1COH);
[p6t4c1imagCOH] = imagcohCalc(p6t4c1COH);
[p6t5c1imagCOH] = imagcohCalc(p6t5c1COH);
[p6t1c2imagCOH] = imagcohCalc(p6t1c2COH);
[p6t2c2imagCOH] = imagcohCalc(p6t2c2COH);
[p6t3c2imagCOH] = imagcohCalc(p6t3c2COH);
%% Calculate Cross-Correlation
% participant 1 cross-correlation calculation
[p1t1c1CrossCor] = crosscorCalc(p1t1c1);
[p1t2c1CrossCor] = crosscorCalc(p1t2c1);
[p1t3c1CrossCor] = crosscorCalc(p1t3c1);
[p1t4c1CrossCor] = crosscorCalc(p1t4c1);
[p1t5c1CrossCor] = crosscorCalc(p1t5c1);
[p1t1c2CrossCor] = crosscorCalc(p1t1c2);
[p1t2c2CrossCor] = crosscorCalc(p1t2c2);
[p1t3c2CrossCor] = crosscorCalc(p1t3c2);
% participant 2 cross-correlation calculation
[p2t1c1CrossCor] = crosscorCalc(p2t1c1);
[p2t2c1CrossCor] = crosscorCalc(p2t2c1);
[p2t3c1CrossCor] = crosscorCalc(p2t3c1);
[p2t4c1CrossCor] = crosscorCalc(p2t4c1);
[p2t5c1CrossCor] = crosscorCalc(p2t5c1);
[p2t1c2CrossCor] = crosscorCalc(p2t1c2);
[p2t2c2CrossCor] = crosscorCalc(p2t2c2);
[p2t3c2CrossCor] = crosscorCalc(p2t3c2);
% participant 3 cross-correlation calculation
[p3t1c1CrossCor] = crosscorCalc(p3t1c1);
[p3t2c1CrossCor] = crosscorCalc(p3t2c1);
[p3t3c1CrossCor] = crosscorCalc(p3t3c1);
[p3t4c1CrossCor] = crosscorCalc(p3t4c1);
[p3t5c1CrossCor] = crosscorCalc(p3t5c1);
[p3t1c2CrossCor] = crosscorCalc(p3t1c2);
[p3t2c2CrossCor] = crosscorCalc(p3t2c2);
[p3t3c2CrossCor] = crosscorCalc(p3t3c2);
% participant 4 cross-correlation calculation
[p4t1c1CrossCor] = crosscorCalc(p4t1c1);
[p4t2c1CrossCor] = crosscorCalc(p4t2c1);
[p4t3c1CrossCor] = crosscorCalc(p4t3c1);
[p4t4c1CrossCor] = crosscorCalc(p4t4c1);
[p4t5c1CrossCor] = crosscorCalc(p4t5c1);
[p4t1c2CrossCor] = crosscorCalc(p4t1c2);
[p4t2c2CrossCor] = crosscorCalc(p4t2c2);
[p4t3c2CrossCor] = crosscorCalc(p4t3c2);
% participant 5 cross-correlation calculation
[p5t1c1CrossCor] = crosscorCalc(p5t1c1);
[p5t2c1CrossCor] = crosscorCalc(p5t2c1);
[p5t3c1CrossCor] = crosscorCalc(p5t3c1);
[p5t4c1CrossCor] = crosscorCalc(p5t4c1);
[p5t5c1CrossCor] = crosscorCalc(p5t5c1);
[p5t1c2CrossCor] = crosscorCalc(p5t1c2);
[p5t2c2CrossCor] = crosscorCalc(p5t2c2);
[p5t3c2CrossCor] = crosscorCalc(p5t3c2);
% participant 6 cross-correlation calculation
[p6t1c1CrossCor] = crosscorCalc(p6t1c1);
[p6t2c1CrossCor] = crosscorCalc(p6t2c1);
[p6t3c1CrossCor] = crosscorCalc(p6t3c1);
[p6t4c1CrossCor] = crosscorCalc(p6t4c1);
[p6t5c1CrossCor] = crosscorCalc(p6t5c1);
[p6t1c2CrossCor] = crosscorCalc(p6t1c2);
[p6t2c2CrossCor] = crosscorCalc(p6t2c2);
[p6t3c2CrossCor] = crosscorCalc(p6t3c2);
%% Calculate mean and std of each participant 
% will only do COH and Cross-correlation calculations because imaginary COH contains complex numbers
% participant 1 means
[p1t1c1MeanCOH, p1t2c1MeanCOH, p1t3c1MeanCOH, p1t4c1MeanCOH, p1t5c1MeanCOH, p1t1c2MeanCOH, p1t2c2MeanCOH, p1t3c2MeanCOH, p1t1c1MeanCC, p1t2c1MeanCC, p1t3c1MeanCC, p1t4c1MeanCC, p1t5c1MeanCC, p1t1c2MeanCC, p1t2c2MeanCC, p1t3c2MeanCC] = PartMeans(p1t1c1COH, p1t2c1COH, p1t3c1COH, p1t4c1COH, p1t5c1COH, p1t1c2COH, p1t2c2COH, p1t3c2COH, p1t1c1CrossCor, p1t2c1CrossCor, p1t3c1CrossCor, p1t4c1CrossCor, p1t5c1CrossCor, p1t1c2CrossCor, p1t2c2CrossCor, p1t3c2CrossCor);
% participant 1 standard deviations
[p1t1c1StdCOH, p1t2c1StdCOH, p1t3c1StdCOH, p1t4c1StdCOH, p1t5c1StdCOH, p1t1c2StdCOH, p1t2c2StdCOH, p1t3c2StdCOH, p1t1c1StdCC, p1t2c1StdCC, p1t3c1StdCC, p1t4c1StdCC, p1t5c1StdCC, p1t1c2StdCC, p1t2c2StdCC, p1t3c2StdCC] = PartStd(p1t1c1COH, p1t2c1COH, p1t3c1COH, p1t4c1COH, p1t5c1COH, p1t1c2COH, p1t2c2COH, p1t3c2COH, p1t1c1CrossCor, p1t2c1CrossCor, p1t3c1CrossCor, p1t4c1CrossCor, p1t5c1CrossCor, p1t1c2CrossCor, p1t2c2CrossCor, p1t3c2CrossCor);
% participant 2 means
[p2t1c1MeanCOH, p2t2c1MeanCOH, p2t3c1MeanCOH, p2t4c1MeanCOH, p2t5c1MeanCOH, p2t1c2MeanCOH, p2t2c2MeanCOH, p2t3c2MeanCOH, p2t1c1MeanCC, p2t2c1MeanCC, p2t3c1MeanCC, p2t4c1MeanCC, p2t5c1MeanCC, p2t1c2MeanCC, p2t2c2MeanCC, p2t3c2MeanCC] = PartMeans(p2t1c1COH, p2t2c1COH, p2t3c1COH, p2t4c1COH, p2t5c1COH, p2t1c2COH, p2t2c2COH, p2t3c2COH, p2t1c1CrossCor, p2t2c1CrossCor, p2t3c1CrossCor, p2t4c1CrossCor, p2t5c1CrossCor, p2t1c2CrossCor, p2t2c2CrossCor, p2t3c2CrossCor);
% participant 2 standard deviations
[p2t1c1StdCOH, p2t2c1StdCOH, p2t3c1StdCOH, p2t4c1StdCOH, p2t5c1StdCOH, p2t1c2StdCOH, p2t2c2StdCOH, p2t3c2StdCOH, p2t1c1StdCC, p2t2c1StdCC, p2t3c1StdCC, p2t4c1StdCC, p2t5c1StdCC, p2t1c2StdCC, p2t2c2StdCC, p2t3c2StdCC] = PartStd(p2t1c1COH, p2t2c1COH, p2t3c1COH, p2t4c1COH, p2t5c1COH, p2t1c2COH, p2t2c2COH, p2t3c2COH, p2t1c1CrossCor, p2t2c1CrossCor, p2t3c1CrossCor, p2t4c1CrossCor, p2t5c1CrossCor, p2t1c2CrossCor, p2t2c2CrossCor, p2t3c2CrossCor);
% participant 3 means
[p3t1c1MeanCOH, p3t2c1MeanCOH, p3t3c1MeanCOH, p3t4c1MeanCOH, p3t5c1MeanCOH, p3t1c2MeanCOH, p3t2c2MeanCOH, p3t3c2MeanCOH, p3t1c1MeanCC, p3t2c1MeanCC, p3t3c1MeanCC, p3t4c1MeanCC, p3t5c1MeanCC, p3t1c2MeanCC, p3t2c2MeanCC, p3t3c2MeanCC] = PartMeans(p3t1c1COH, p3t2c1COH, p3t3c1COH, p3t4c1COH, p3t5c1COH, p3t1c2COH, p3t2c2COH, p3t3c2COH, p3t1c1CrossCor, p3t2c1CrossCor, p3t3c1CrossCor, p3t4c1CrossCor, p3t5c1CrossCor, p3t1c2CrossCor, p3t2c2CrossCor, p3t3c2CrossCor);
% participant 3 standard deviations
[p3t1c1StdCOH, p3t2c1StdCOH, p3t3c1StdCOH, p3t4c1StdCOH, p3t5c1StdCOH, p3t1c2StdCOH, p3t2c2StdCOH, p3t3c2StdCOH, p3t1c1StdCC, p3t2c1StdCC, p3t3c1StdCC, p3t4c1StdCC, p3t5c1StdCC, p3t1c2StdCC, p3t2c2StdCC, p3t3c2StdCC] = PartStd(p3t1c1COH, p3t2c1COH, p3t3c1COH, p3t4c1COH, p3t5c1COH, p3t1c2COH, p3t2c2COH, p3t3c2COH, p3t1c1CrossCor, p3t2c1CrossCor, p3t3c1CrossCor, p3t4c1CrossCor, p3t5c1CrossCor, p3t1c2CrossCor, p3t2c2CrossCor, p3t3c2CrossCor);
% participant 4 means
[p4t1c1MeanCOH, p4t2c1MeanCOH, p4t3c1MeanCOH, p4t4c1MeanCOH, p4t5c1MeanCOH, p4t1c2MeanCOH, p4t2c2MeanCOH, p4t3c2MeanCOH, p4t1c1MeanCC, p4t2c1MeanCC, p4t3c1MeanCC, p4t4c1MeanCC, p4t5c1MeanCC, p4t1c2MeanCC, p4t2c2MeanCC, p4t3c2MeanCC] = PartMeans(p4t1c1COH, p4t2c1COH, p4t3c1COH, p4t4c1COH, p4t5c1COH, p4t1c2COH, p4t2c2COH, p4t3c2COH, p4t1c1CrossCor, p4t2c1CrossCor, p4t3c1CrossCor, p4t4c1CrossCor, p4t5c1CrossCor, p4t1c2CrossCor, p4t2c2CrossCor, p4t3c2CrossCor);
% participant 4 standard deviations
[p4t1c1StdCOH, p4t2c1StdCOH, p4t3c1StdCOH, p4t4c1StdCOH, p4t5c1StdCOH, p4t1c2StdCOH, p4t2c2StdCOH, p4t3c2StdCOH, p4t1c1StdCC, p4t2c1StdCC, p4t3c1StdCC, p4t4c1StdCC, p4t5c1StdCC, p4t1c2StdCC, p4t2c2StdCC, p4t3c2StdCC] = PartStd(p4t1c1COH, p4t2c1COH, p4t3c1COH, p4t4c1COH, p4t5c1COH, p4t1c2COH, p4t2c2COH, p4t3c2COH, p4t1c1CrossCor, p4t2c1CrossCor, p4t3c1CrossCor, p4t4c1CrossCor, p4t5c1CrossCor, p4t1c2CrossCor, p4t2c2CrossCor, p4t3c2CrossCor);
% participant 5 means
[p5t1c1MeanCOH, p5t2c1MeanCOH, p5t3c1MeanCOH, p5t4c1MeanCOH, p5t5c1MeanCOH, p5t1c2MeanCOH, p5t2c2MeanCOH, p5t3c2MeanCOH, p5t1c1MeanCC, p5t2c1MeanCC, p5t3c1MeanCC, p5t4c1MeanCC, p5t5c1MeanCC, p5t1c2MeanCC, p5t2c2MeanCC, p5t3c2MeanCC] = PartMeans(p5t1c1COH, p5t2c1COH, p5t3c1COH, p5t4c1COH, p5t5c1COH, p5t1c2COH, p5t2c2COH, p5t3c2COH, p5t1c1CrossCor, p5t2c1CrossCor, p5t3c1CrossCor, p5t4c1CrossCor, p5t5c1CrossCor, p5t1c2CrossCor, p5t2c2CrossCor, p5t3c2CrossCor);
% participant 5 standard deviations
[p5t1c1StdCOH, p5t2c1StdCOH, p5t3c1StdCOH, p5t4c1StdCOH, p5t5c1StdCOH, p5t1c2StdCOH, p5t2c2StdCOH, p5t3c2StdCOH, p5t1c1StdCC, p5t2c1StdCC, p5t3c1StdCC, p5t4c1StdCC, p5t5c1StdCC, p5t1c2StdCC, p5t2c2StdCC, p5t3c2StdCC] = PartStd(p5t1c1COH, p5t2c1COH, p5t3c1COH, p5t4c1COH, p5t5c1COH, p5t1c2COH, p5t2c2COH, p5t3c2COH, p5t1c1CrossCor, p5t2c1CrossCor, p5t3c1CrossCor, p5t4c1CrossCor, p5t5c1CrossCor, p5t1c2CrossCor, p5t2c2CrossCor, p5t3c2CrossCor);
% participant 6 means
[p6t1c1MeanCOH, p6t2c1MeanCOH, p6t3c1MeanCOH, p6t4c1MeanCOH, p6t5c1MeanCOH, p6t1c2MeanCOH, p6t2c2MeanCOH, p6t3c2MeanCOH, p6t1c1MeanCC, p6t2c1MeanCC, p6t3c1MeanCC, p6t4c1MeanCC, p6t5c1MeanCC, p6t1c2MeanCC, p6t2c2MeanCC, p6t3c2MeanCC] = PartMeans(p6t1c1COH, p6t2c1COH, p6t3c1COH, p6t4c1COH, p6t5c1COH, p6t1c2COH, p6t2c2COH, p6t3c2COH, p6t1c1CrossCor, p6t2c1CrossCor, p6t3c1CrossCor, p6t4c1CrossCor, p6t5c1CrossCor, p6t1c2CrossCor, p6t2c2CrossCor, p6t3c2CrossCor);
% participant 6 standard deviations
[p6t1c1StdCOH, p6t2c1StdCOH, p6t3c1StdCOH, p6t4c1StdCOH, p6t5c1StdCOH, p6t1c2StdCOH, p6t2c2StdCOH, p6t3c2StdCOH, p6t1c1StdCC, p6t2c1StdCC, p6t3c1StdCC, p6t4c1StdCC, p6t5c1StdCC, p6t1c2StdCC, p6t2c2StdCC, p6t3c2StdCC] = PartStd(p6t1c1COH, p6t2c1COH, p6t3c1COH, p6t4c1COH, p6t5c1COH, p6t1c2COH, p6t2c2COH, p6t3c2COH, p6t1c1CrossCor, p6t2c1CrossCor, p6t3c1CrossCor, p6t4c1CrossCor, p6t5c1CrossCor, p6t1c2CrossCor, p6t2c2CrossCor, p6t3c2CrossCor);
%% Bar graph comparison for before and after intervention for each participant's means
% participant 1 mean
p1c1 = [p1t1c1MeanCOH p1t2c1MeanCOH p1t3c1MeanCOH p1t4c1MeanCOH p1t5c1MeanCOH];
p1c2 = [p1t1c2MeanCOH p1t2c2MeanCOH p1t3c2MeanCOH];
figure;
subplot(1,2,1);
barh(p1c1);
title('P1 Pre-Intervention COH Means')
ylabel('Trials')
xlim([0 1]);
subplot(1,2,2);
barh(p1c2);
title('P1 Post-Intervention COH Means')
ylabel('Trials')
xlim([0 1]);
savefig('P1 COH Mean Comparison.fig');
% participant 2 mean
p2c1 = [p2t1c1MeanCOH p2t2c1MeanCOH p2t3c1MeanCOH p2t4c1MeanCOH p2t5c1MeanCOH];
p2c2 = [p2t1c2MeanCOH p2t2c2MeanCOH p2t3c2MeanCOH];
figure;
subplot(1,2,1);
barh(p2c1);
title('P2 Pre-Intervention COH Means')
ylabel('Trials')
xlim([0 1]);
subplot(1,2,2);
barh(p2c2);
title('P2 Post-Intervention COH Means')
ylabel('Trials')
xlim([0 1]);
savefig('P2 COH Mean Comparison.fig');
% participant 3 mean
p3c1 = [p3t1c1MeanCOH p3t2c1MeanCOH p3t3c1MeanCOH p3t4c1MeanCOH p3t5c1MeanCOH];
p3c2 = [p3t1c2MeanCOH p3t2c2MeanCOH p3t3c2MeanCOH];
figure;
subplot(1,2,1);
barh(p3c1);
title('P3 Pre-Intervention COH Means')
ylabel('Trials')
xlim([0 1]);
subplot(1,2,2);
barh(p3c2);
title('P3 Post-Intervention COH Means')
ylabel('Trials')
xlim([0 1]);
savefig('P3 COH Mean Comparison.fig');
% participant 4 mean
p4c1 = [p4t1c1MeanCOH p4t2c1MeanCOH p4t3c1MeanCOH p4t4c1MeanCOH p4t5c1MeanCOH];
p4c2 = [p4t1c2MeanCOH p4t2c2MeanCOH p4t3c2MeanCOH];
figure;
subplot(1,2,1);
barh(p4c1);
title('P4 Pre-Intervention COH Means')
ylabel('Trials')
xlim([0 1]);
subplot(1,2,2);
barh(p4c2);
title('P4 Post-Intervention COH Means')
ylabel('Trials')
xlim([0 1]);
savefig('P4 COH Mean Comparison.fig');
% participant 5 mean 
p5c1 = [p5t1c1MeanCOH p5t2c1MeanCOH p5t3c1MeanCOH p5t4c1MeanCOH p5t5c1MeanCOH];
p5c2 = [p5t1c2MeanCOH p5t2c2MeanCOH p5t3c2MeanCOH];
figure;
subplot(1,2,1);
barh(p5c1);
title('P5 Pre-Intervention COH Means')
ylabel('Trials')
xlim([0 1]);
subplot(1,2,2);
barh(p5c2);
title('P5 Post-Intervention COH Means')
ylabel('Trials')
xlim([0 1]);
savefig('P5 COH Mean Comparison.fig');
% participant 6 mean
p6c1 = [p6t1c1MeanCOH p6t2c1MeanCOH p6t3c1MeanCOH p6t4c1MeanCOH p6t5c1MeanCOH];
p6c2 = [p6t1c2MeanCOH p6t2c2MeanCOH p6t3c2MeanCOH];
figure;
subplot(1,2,1);
barh(p6c1);
title('P6 Pre-Intervention COH Means')
ylabel('Trials')
xlim([0 1]);
subplot(1,2,2);
barh(p6c2);
title('P6 Post-Intervention COH Means')
ylabel('Trials')
xlim([0 1]);
savefig('P6 COH Mean Comparison.fig');
%% Bar comparison of within intervention group means
% participant 1
p1MoMc1 = mean(p1c1); %takes the mean of all the means
p1MoMc2 = mean(p1c2);
figure(7);
subplot(2,3,1);
barh(p1MoMc1);
title('P1 Mean Comparison')
ylabel('Pre-Intervention')
xlim([0 1]);
subplot(2,3,4);
barh(p1MoMc2);
ylabel('Post Intervention')
xlim([0 1]);
% participant 2
p2MoMc1 = mean(p2c1);
p2MoMc2 = mean(p2c2);
subplot(2,3,2)
barh(p2MoMc1);
title('P2 Mean Comparison')
ylabel('Pre-Intervention')
xlim([0 1]);
subplot(2,3,5);
barh(p2MoMc2);
ylabel('Post Intervention')
xlim([0 1]);
% participant 3
p3MoMc1 = mean(p3c1);
p3MoMc2 = mean(p3c2);
subplot(2,3,3)
barh(p3MoMc1);
title('P3 Mean Comparison')
ylabel('Pre-Intervention')
xlim([0 1]);
subplot(2,3,6);
barh(p3MoMc2);
ylabel('Post Intervention')
xlim([0 1]);
savefig('Control Group Mean Comparison.fig');
% participant 4 
figure(8);
p4MoMc1 = mean(p4c1);
p4MoMc2 = mean(p4c2);
subplot(2,3,1)
barh(p4MoMc1);
title('P4 Mean Comparison')
ylabel('Pre-Intervention')
xlim([0 1]);
subplot(2,3,4);
barh(p4MoMc2);
ylabel('Post Intervention')
xlim([0 1]);
% participant 5
p5MoMc1 = mean(p5c1);
p5MoMc2 = mean(p5c2);
subplot(2,3,2)
barh(p5MoMc1);
title('P5 Mean Comparison')
ylabel('Pre-Intervention')
xlim([0 1]);
subplot(2,3,5);
barh(p5MoMc2);
ylabel('Post Intervention')
xlim([0 1]);
% participant 6
p6MoMc1 = mean(p6c1);
p6MoMc2 = mean(p6c2);
subplot(2,3,3)
barh(p6MoMc1);
title('P6 Mean Comparison')
ylabel('Pre-Intervention')
xlim([0 1]);
subplot(2,3,6);
barh(p6MoMc2);
ylabel('Post Intervention')
xlim([0 1]);
savefig('Intervention Group Mean Comparison.fig');
%% compare groups using a bar graph
g1c1 = [p1MoMc1 p3MoMc1];
g1c2 = [p1MoMc2 p3MoMc2];
g2c1 = [p4MoMc1 p5MoMc1 p6MoMc1];
g2c2 = [p4MoMc2 p5MoMc2 p6MoMc2];
g1c1Avg = mean(g1c1);
g1c2Avg = mean(g1c2);
g2c1Avg = mean(g2c1);
g2c2Avg = mean(g2c2);
group1means = [g1c1Avg g1c2Avg];
group2means = [g2c1Avg g2c2Avg];
figure(9);
subplot(2,1,1);
barh(group1means);
ylabel('Control Pre(1) & Post(2) Means')
xlim([0 1]);
subplot(2,1,2);
barh(group2means);
ylabel('Intervention Pre(1) & Post(2) Means')
xlim([0 1]);
savefig('All Group Mean Comparison.fig');
%% Export Data
Participants = ({'P1 Trial1 Condition1', 'P1 Trial2 Condition1', 'P1 Trial3 Condition1', 'P1 Trial4 Condition1', 'P1 Trial5 Condition1', ...
    'P1 Trial1 Condition2', 'P1 Trial2 Condition2', 'P1 Trial3 Condition2', 'P3 Trial1 Condition1', ...
    'P3 Trial2 Condition1', 'P3 Trial3 Condition1', 'P3 Trial4 Condition1', 'P3 Trial5 Condition1',...
    'P3 Trial1 Condition2', 'P3 Trial2 Condition2', 'P3 Trial3 Condition2', 'P4 Trial1 Condition1', 'P4 Trial2 Condition1', ...
    'P4 Trial3 Condition1', 'P4 Trial4 Condition1', 'P4 Trial5 Condition1', 'P4 Trial1 Condition2', ...
    'P4 Trial2 Condition2', 'P4 Trial3 Condition2', 'P5 Trial1 Condition1', 'P5 Trial2 Condition1', 'P5 Trial3 Condition1', ...
    'P5 Trial4 Condition1', 'P5 Trial5 Condition1', 'P5 Trial1 Condition2', 'P5 Trial2 Condition2', ...
    'P5 Trial3 Condition2', 'P6 Trial1 Condition1', 'P6 Trial2 Condition1', 'P6 Trial3 Condition1', 'P6 Trial4 Condition1', ...
    'P6 Trial5 Condition1', 'P6 Trial1 Condition2', 'P6 Trial2 Condition2', 'P6 Trial3 Condition2'})';
MeanCOH = [p1t1c1MeanCOH,p1t2c1MeanCOH, p1t3c1MeanCOH, p1t4c1MeanCOH, p1t5c1MeanCOH, p1t1c2MeanCOH, p1t2c2MeanCOH, p1t3c2MeanCOH, ...
    p3t1c1MeanCOH,p3t2c1MeanCOH, p3t3c1MeanCOH, p3t4c1MeanCOH, p3t5c1MeanCOH, p3t1c2MeanCOH, p3t2c2MeanCOH, p3t3c2MeanCOH, ...
    p4t1c1MeanCOH,p4t2c1MeanCOH, p4t3c1MeanCOH, p4t4c1MeanCOH, p4t5c1MeanCOH, p4t1c2MeanCOH, p4t2c2MeanCOH, p4t3c2MeanCOH, ...
    p5t1c1MeanCOH,p5t2c1MeanCOH, p5t3c1MeanCOH, p5t4c1MeanCOH, p5t5c1MeanCOH, p5t1c2MeanCOH, p5t2c2MeanCOH, p5t3c2MeanCOH, ...
    p6t1c1MeanCOH,p6t2c1MeanCOH, p6t3c1MeanCOH, p6t4c1MeanCOH, p6t5c1MeanCOH, p6t1c2MeanCOH, p6t2c2MeanCOH, p6t3c2MeanCOH]';
StdCOH = [p1t1c1StdCOH,p1t2c1StdCOH, p1t3c1StdCOH, p1t4c1StdCOH, p1t5c1StdCOH, p1t1c2StdCOH, p1t2c2StdCOH, p1t3c2StdCOH, ...
    p3t1c1StdCOH,p3t2c1StdCOH, p3t3c1StdCOH, p3t4c1StdCOH, p3t5c1StdCOH, p3t1c2StdCOH, p3t2c2StdCOH, p3t3c2StdCOH, ...
    p4t1c1StdCOH,p4t2c1StdCOH, p4t3c1StdCOH, p4t4c1StdCOH, p4t5c1StdCOH, p4t1c2StdCOH, p4t2c2StdCOH, p4t3c2StdCOH, ...
    p5t1c1StdCOH,p5t2c1StdCOH, p5t3c1StdCOH, p5t4c1StdCOH, p5t5c1StdCOH, p5t1c2StdCOH, p5t2c2StdCOH, p5t3c2StdCOH, ...
    p6t1c1StdCOH,p6t2c1StdCOH, p6t3c1StdCOH, p6t4c1StdCOH, p6t5c1StdCOH, p6t1c2StdCOH, p6t2c2StdCOH, p6t3c2StdCOH]';
MeanCC = [p1t1c1MeanCC,p1t2c1MeanCC, p1t3c1MeanCC, p1t4c1MeanCC, p1t5c1MeanCC, p1t1c2MeanCC, p1t2c2MeanCC, p1t3c2MeanCC, ...
    p3t1c1MeanCC,p3t2c1MeanCC, p3t3c1MeanCC, p3t4c1MeanCC, p3t5c1MeanCC, p3t1c2MeanCC, p3t2c2MeanCC, p3t3c2MeanCC, ...
    p4t1c1MeanCC,p4t2c1MeanCC, p4t3c1MeanCC, p4t4c1MeanCC, p4t5c1MeanCC, p4t1c2MeanCC, p4t2c2MeanCC, p4t3c2MeanCC, ...
    p5t1c1MeanCC,p5t2c1MeanCC, p5t3c1MeanCC, p5t4c1MeanCC, p5t5c1MeanCC, p5t1c2MeanCC, p5t2c2MeanCC, p5t3c2MeanCC, ...
    p6t1c1MeanCC,p6t2c1MeanCC, p6t3c1MeanCC, p6t4c1MeanCC, p6t5c1MeanCC, p6t1c2MeanCC, p6t2c2MeanCC, p6t3c2MeanCC]';
StdCC = [p1t1c1StdCC,p1t2c1StdCC, p1t3c1StdCC, p1t4c1StdCC, p1t5c1StdCC, p1t1c2StdCC, p1t2c2StdCC, p1t3c2StdCC, ...
    p3t1c1StdCC,p3t2c1StdCC, p3t3c1StdCC, p3t4c1StdCC, p3t5c1StdCC, p3t1c2StdCC, p3t2c2StdCC, p3t3c2StdCC, ...
    p4t1c1StdCC,p4t2c1StdCC, p4t3c1StdCC, p4t4c1StdCC, p4t5c1StdCC, p4t1c2StdCC, p4t2c2StdCC, p4t3c2StdCC, ...
    p5t1c1StdCC,p5t2c1StdCC, p5t3c1StdCC, p5t4c1StdCC, p5t5c1StdCC, p5t1c2StdCC, p5t2c2StdCC, p5t3c2StdCC, ...
    p6t1c1StdCC,p6t2c1StdCC, p6t3c1StdCC, p6t4c1StdCC, p6t5c1StdCC, p6t1c2StdCC, p6t2c2StdCC, p6t3c2StdCC]';
T = table(Participants, MeanCOH, StdCOH, MeanCC, StdCC);
writetable(T, 'Participant Calculations.csv');
file = 0; %sets the while loop to a different number so that it does not continue indefinitely
end