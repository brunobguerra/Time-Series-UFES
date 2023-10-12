%TREINARNAX treina uma rede NARX/NAR/NIO.
%   NET = TREINARNAX(M,MX,FD,ID,N,P) treina uma rede neural NARX/NAR/NIO. 
%
%   A matriz M é a série de saída de dimensões: Variáveis x Amostras.
%   A matriz MX é a série exógena de dimensões: Variáveis x Amostras.
%   O Vetor de Atrasos da Realimentação (FD) (delay).
%   O Vetor de Atrasos da Entrada (ID) análogo ao FD.
%   N = vetor com número de neurônios das camadas ocultas.
%   P = uso de processadores
%       P = 1   Usa GPU
%       P = 0   Usa Cluster Paralelo
%       P = -1  Usa único Processador
%
%   Se MX = [], então ID é ignorado e a rede treinada será NAR.
%   Se FD = [], então a rede treinada será NIO.
%
%   NET é a rede treinada de malha aberta.
%
% Example:
%   t = 0:0.001:10;
%   M = sin(2*pi*10*t) + 0.5*sin(2*pi*60*t);
%   MX = M + 0.05*randn(size(M));
% Rede NARX
%   net = treinaRNAX(M,MX,1:10,1:10,[10 4],0); % rede com 2 camadas ocultas
%   net = treinaRNAX(M,MX,5:15,5:15,12,0); % treina para remo??o de 5 amostras 
% Rede NAR
%   net = treinaRNAX(M,[],1:10,[],[10 4],0); % rede com 2 camadas ocultas
%   net = treinaRNAX(M,[],5:15,[],12,0); % treina para remo??o de 5 amostras
% Rede NIO
%   net = treinaRNAX(M,MX,[],1:10,[10 4],0); % rede com 2 camadas ocultas
%   net = treinaRNAX(M,MX,[],5:15,12,0); % treina para remo??o de 5 amostras 
%
% See also PREVRNAX, PPREV.
%
%   Copyright 2023 Klaus Fabian.
%   $Revisão: 4.0 $  $Data: 25/04/2023 15:42h $

function [net] = treinaRNAX(M,MX,FD,ID,N,P)
[net] = p2(M,MX,FD,ID,N,P);
end