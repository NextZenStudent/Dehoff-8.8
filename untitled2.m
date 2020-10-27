h = animatedline;

axis([0,1,-2000,1500])

x = linspace(0,1,100);
R = 8.314;

T=300;
T2=400;
T3=500;
T4=600;
T5=700;

G = (9600*x -6000*(x.^2) -3600*(x.^3))*(1 - (T/4000)) + R*T*(log(1-x) + x.*log(x./(1-x)));
H = (9600*x -6000*(x.^2) -3600*(x.^3))*(1 - (T2/4000)) + R*T2*(log(1-x) + x.*log(x./(1-x)));
J = (9600*x -6000*(x.^2) -3600*(x.^3))*(1 - (T3/4000)) + R*T3*(log(1-x) + x.*log(x./(1-x)));
K = (9600*x -6000*(x.^2) -3600*(x.^3))*(1 - (T4/4000)) + R*T4*(log(1-x) + x.*log(x./(1-x)));
L = (9600*x -6000*(x.^2) -3600*(x.^3))*(1 - (T5/4000)) + R*T5*(log(1-x) + x.*log(x./(1-x)));

h.Color = 'red';
h.LineWidth = 4;
set(gcf, 'Position',  [300, 300, 600, 600])

for k = 1:length(x)
    addpoints(h,x(k),G(k));
    drawnow
end

g = animatedline;
g.Color = 'blue';
g.LineWidth = 4;

for k = 1:length(x)
    addpoints(g,x(k),H(k));
    drawnow
end

e = animatedline;
e.Color = 'Green';
e.LineWidth = 4;


for k = 1:length(x)
    addpoints(e,x(k),J(k));
    drawnow
end



e = animatedline;
e.Color = 'cyan';
e.LineWidth = 4;


for k = 1:length(x)
    addpoints(e,x(k),K(k));
    drawnow
end



e = animatedline;
e.Color = 'magenta';
e.LineWidth = 4;


for k = 1:length(x)
    addpoints(e,x(k),L(k));
    drawnow
end