function monoslice(filename, N1, N2)
##helper function that (if needed) averages stereo to mono and normalizes the signal
global x1 Fs1 
if (audioinfo(filename).NumChannels > 1)
    [x1,Fs1] = audioread(filename, [N1, N2]);
    x1 = sum(x1,2);
else
    [x1,Fs1] = audioread(filename, [N1, N2]);
end
if (max(x1)>1)
    x1 = x1 ./ abs(max(x1));
end
