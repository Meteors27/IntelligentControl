function pidn = expert(x)
% EXPERT  PID controller for the inverted pendulum.
if abs(x(1)-13) < 0.05
    if x(2) > 0
        pidn=[200;30;0.005;1000];
    else
        pidn=[200;30;0.005;1000];
    end
    
elseif abs(x(1)-13) < 0.12
    if x(1) > 13
        pidn=[400;30;0.005;500];
    else
        if x(2) > 0
            pidn=[350;10;0.2;500];
        else
            pidn=[350;40;0.2;500];
        end
    end
    
else
    if x(2) > 0
        pidn=[400;30;0.8;100];
    else
        pidn=[600;40;0.5;100];
    end
end
% 11 1 26 0.6
% 300 20 30 300