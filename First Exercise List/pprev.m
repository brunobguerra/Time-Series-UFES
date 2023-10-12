%PPREV plota gráfico resultado da previsão
%   PPREV(MP,M,HP,NINTERP,EXEMPLOS,STR) plota gráfico da série M (original)
%   e da série MP (prevista) no horizonte de previsão HP (HP > 0).
%   NINTERP é o numero de amostras interpoladas entre duas amostras
%   consecutivas do sinal.
%   EXEMPLO é o numero de amostras a ser plotado.
%   STR string parte inicial do título 
%
% Example:
%   HP = 5;
%   Delay = 15;
%   t = 0:0.001:10;
%   M = sin(2*pi*10*t) + 0.5*sin(2*pi*60*t);
%   MX = M + 0.5*randn(size(M));
%
%   netc = treinaRNAX(M,MX,1:Delay,1:Delay,10,0);                  % NARX com CL
%   MPc = prevRNAX(netc,M,MX,HP,'CL');
%   pprev(MPc,M,HP,1,30,'');
%
%   netr = treinaRNAX(M,MX,(1+HP):(Delay+HP),(1+HP):(Delay+HP),10,0);  % NARX com RD
%   MPr = prevRNAX(netr,M,MX,HP,'RD');
%   pprev(MPr,M,HP,1,30,'');
%
% Com comparação de resultados
%   netc = treinaRNAX(M(1:end-HP),MX(1:end-HP),1:Delay,1:Delay,10);
%   MPc = prevRNAX(netc,M(1:end-HP),MX(1:end-HP),HP,'CL');
%   pprev(MPc,M,HP,1,30,'');
%
% See also TREINARNAX, PREVRNAX.
%
%   Copyright 2023 Klaus Fabian.
%   $Revisão: 3.0 $  $Data: 25/04/2023 15:42h $
function pprev(MP,M,HP,ninterp,exemplos,str)
p4(MP,M,HP,ninterp,exemplos,str);
end