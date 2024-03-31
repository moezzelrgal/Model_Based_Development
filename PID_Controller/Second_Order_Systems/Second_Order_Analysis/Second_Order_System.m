Wn = 0.5 ;
zeta = 0.3 ;


num = [0 Wn^2] ;
den = [1 2*zeta*Wn Wn^2] ;

G = tf(num,den) ;

hold on

step(G);

