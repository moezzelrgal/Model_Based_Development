k = 1 ;

R= 10e3 ;
C = 1e-7 ; 

T = R*C ;

num = [0 k] ;
den = [T 1] ;

G = tf(num,den) ;

hold on

step(G)