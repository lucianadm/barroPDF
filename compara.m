function condition_met=compara(p,dx)
bines=length(p);
                    for c=1:bines-1     %almaceno solo los que cumple que los bines tienen probs descendentes, ej 0.9 0.3 0.1 0
                     condition_met = true;  % Initialize a flag
                          if p(c)+0.1*dx < p(c+1)
                             condition_met = false;
                             break;
                          end
                    end 
    
 end 