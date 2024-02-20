clear all;
close all;

los = 9;

[t] = sim("Pze2.slx");

figure

ax = axes;
xlim(ax, [0 100]);
ylim(ax, [-20 100]);

line1 = animatedline('Color','r','LineWidth',2);

line2 = animatedline('Color','b','LineWidth',2);

line3 = animatedline('Color','y','LineWidth',2);

for k = 1:length(t)
    addpoints(line1,t(k),s1(k))
    addpoints(line2,t(k),s2(k))
    addpoints(line3,t(k),s3(k))

    drawnow
end