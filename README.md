# shuffler
Slice a sound into pieces and randomly glue them back together. For whenever you are feeling low on entropy! 

Built in MATLAB R2020a; tested up through R2022a.

Syntax: shuffle(filename, block_size, file_name)

filename = audio file in your current directory, e. g. 'my_sound.wav'

block_size = length in samples of your desired sound slices, e. g. 44100 for 1-second slices for audio with a 44100 Hz sample rate

file_name [optional] = output name in your current directory, e.g. 'my_sound_shuffled.wav'

Example: Slice 44100 Hz sample rate 'my_sound.wav' into 1-second slices and then listen to the result when they are randomly glued back together.

>shuffle('my_sound.wav', 44100)

Example: Slice 44100 Hz sample rate 'my_sound.wav' into 1-second slices and then save the result when they are randomly glued back together to "my_sound_shuffled.wav').

>shuffle('my_sound.wav', 44100, 'my_sound_shuffled.wav')
