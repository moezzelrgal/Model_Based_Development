k = 400 ;
b = 10 ; 
x0 = 1 ;

mdl = gcs ;

massvalues = 3 : 10 ;

for i = 1: numel(massvalues)
    m = massvalues(i);
    result = sim(mdl);
    plot(result.logsout.get("x").Values);
    hold on
    disp("Simulation "+num2str(i) +" Complete") ;
    title("Spring Mass Damper");
    Legendlables{i} = "m= "+ num2str(m);
    
end
  legend(Legendlables) ; 

