%PREVRNAX previsão em uma rede NAR ou NARX ou NIO treinada
%   [MP] = PREVNARX(NET,M,MX,HP,TP) aplica uma entrada M com uma entrada
%   exógena MX a uma rede neural treinada para a previsão no horizonte
%   HP treinado (HP > 0). 
%
%   Se MX = [], então a rede é NAR.
%   As matrizes M e MX são as séries de dimensões: Variáveis x Amostras.
%
%   NET é a rede NARX/NAR/NIO treinada para a previsão no horizonte.
%   TP = Tipo de previsão
%       - RD = Remove Delay
%       - CL = Close Loop
%
% Example:
%   HP = 5;
%   Delay = 15;
%   t = 0:0.001:10;
%   M = sin(2*pi*10*t) + 0.5*sin(2*pi*60*t);
%
%   net = treinaRNAX(M,[],(HP+1):HP+Delay,[],10,0);   % NAR com RD
%   MP1 = prevRNAX(net,M,[],HP,'RD');
%   pprev(MP1,M,HP,1,30,'');
%   net = treinaRNAX(M,[],1:Delay,[],10,0);       % NAR com CL
%   MP2 = prevRNAX(net,M,[],HP,'CL');
%   pprev(MP2,M,HP,1,30,'');
%
% See also TREINARNAX, PPREV.
%
%   Copyright 2023 Klaus Fabian.
%   $Revisão: 4.0 $  $Data: 25/04/2023 15:42h $

function [MP] = prevRNAX(net,M,MX,HP,TP)
MP = p3(net,M,MX,HP,TP);
end