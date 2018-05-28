clear;
clc;

webcamlist;
cam = webcam('Integrated Camera');
net = alexnet;

preview(cam);


    img = snapshot(cam);
    sz = net.Layers(1).InputSize;
    img = img(1:sz(1),1:sz(2),1:sz(3));
    label = classify(net,img);

    if(label == 'shower cap')
        label = 'Reuben'
    end
    
    if(label == 'bonnet')
        label = 'Reuben'
    end

    imshow(img);
    title(char(label));
