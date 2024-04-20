function play_and_save(fs,y,name)
    fname = ['result/',name];
    sound(y,fs);
    audiowrite(fname,y,fs);
end

