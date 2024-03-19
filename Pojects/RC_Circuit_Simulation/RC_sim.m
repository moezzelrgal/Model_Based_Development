R = 1 ;
C = 1e-6 ;
Mdl = gcs ;

result = sim(Mdl);
subplot(2,1,1);
plot(result.logsout.get("Vc").Values,'r','Linewidth',2);
legend("Vc");
title("RC Circute Simulation");
subplot(2,1,2);
plot(result.logsout.get("Vin").Values,'b','Linewidth',2);
legend("Vin");
title("V input");
