function shuffle(filename, block_size, file_name)
if nargin == 2
    check = 0;
else
    check = 1;
end
global x1
nSamples = audioinfo(filename).TotalSamples;
Fs = audioinfo(filename).SampleRate;
curSample = 1; q=1;
while (curSample <= nSamples)
    N1 = curSample;
    N2 = curSample + block_size - 1;
    if (N2 > nSamples)
        N2 = nSamples;
    end
    monoslice(filename, N1, N2)
    try
        j(q,:) = x1;
    catch
        x1 = [x1 ; zeros(block_size-size(x1,1), 1)];
        j(q,:) = x1;
    end
    q = q + 1;
    curSample = curSample + block_size;
end
random_j = j(randperm(size(j, 1)), :);
shuffled = random_j(1,:)';
for (i=2:size(random_j, 1))
    shuffled = [shuffled;random_j(i,:)'];
end
if check > 0
    audiowrite(file_name, shuffled ./ abs(max(shuffled)), Fs)
else
    sound(shuffled, Fs)
end