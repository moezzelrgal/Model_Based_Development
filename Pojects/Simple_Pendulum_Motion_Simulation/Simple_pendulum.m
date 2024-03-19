g = 9.81 ;

mdl = gcs ;

L_Values = 1:5 ;

for i= 1: numel(L_Values)
    L = L_Values(i) ;
    result = sim(mdl);

 plot(result.logsout.get("X").Values);
    hold on
    disp("Simulation "+num2str(i) +" Complete") ;
    title("Simple Pendulum");
    Legendlables{i} = "L= "+ num2str(L);
    
end
  legend(Legendlables) ; 