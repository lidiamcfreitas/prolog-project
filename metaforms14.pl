%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%       GRUPO NUM: 
%       ALUNOS: 
%
%               ATENCAO: NAO USAR ACENTOS OU CEDILHAS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% ESCREVER AQUI O CODIGO DO PROJECTO DE LP 2013/2014
% o predicado coloca/4 coloca a peca numa posicao do tabuleiro
coloca(A, top, left, [A,_,_,_,_,_,_,_,_]).
coloca(A, top, middle, [_,A,_,_,_,_,_,_,_]).
coloca(A, top, right, [_,_,A,_,_,_,_,_,_]).
coloca(A, center, left, [_,_,_,A,_,_,_,_,_]).
coloca(A, center, middle, [_,_,_,_,A,_,_,_,_]).
coloca(A, center, right, [_,_,_,_,_,A,_,_,_]).
coloca(A, bottom, left, [_,_,_,_,_,_,A,_,_]).
coloca(A, bottom, middle, [_,_,_,_,_,_,_,A,_]).
coloca(A, bottom, right, [_,_,_,_,_,_,_,_,A]).

% implementacoes das pistas
trioLeft(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro).
trioLeft(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro).
cobra(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro).
tSimples(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro).
tLeft(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro).
tRight(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro).
tInvertido(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro).
cantoTopLeft(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro).
cantoTopRight(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro).
cantoBottomLeft(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro).
cantoBottomRight(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro).
diagonalGrave(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro).
diagonalAguda(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TODO:
% - ter uma lista que contem todas as pecas possiveis, sempre que
%   uma peca e adicionada ao tabuleiro, remove-la dessa lista	
%	|OU| uma lista que faca o tracking das pecas usadas(melhor?)
%   (para saber que pecas falta colocar no check/2).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%