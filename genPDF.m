function []=genPDF(i,p,dx,fi)
bines=length(p);
paux=p;
for ii=1:((p(i)-dx)/dx)
    paux(i)=p(i)-ii*dx;
    paux(i+1)=ii*dx;
    %guardo si cumple

    
      condition_met=compara(paux,dx);
            if (condition_met)
                    %caculo cuantis
      %Calculo entropía de patrones
        Hbp = ShannonEntropy(paux, 'Normalized');
        
        %Calculo complejidad de patrones
        CBP = Complexity(paux, 'Normalized');
%                  for j=1:bines
%                  fprintf(fi, '%u ', paux(j)) ;
%                 % fprintf(fi, ' ') ;
%                  end 
                 fprintf(fi, '%f  %f \n', Hbp,CBP) ;
                % fprintf(fi,'\n');
                
                
                if (Hbp>0.58642 & Hbp<0.58644)
                     for j=1:bines
                fprintf(fi, '%u ', paux(j)) ;
                  fprintf(fi, ' ') ;
                  end 
                % fprintf(fi, '%f  %f \n', Hbp,CBP) ;
                 fprintf(fi, '%f  %f \n', Hbp,CBP) ;
                end   
                    
            end
    if (paux(i+1)>=dx & i+1<bines)
        genPDF(i+1,paux,dx,fi);
    end
end