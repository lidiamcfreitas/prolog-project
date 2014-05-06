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

% predicados auxiliares
membro(X, [X|_]).
membro(X, [_|R]) :- membro(X, R).

% lista das precas disponiveis
todasPecas([peca(triangulo, azul), peca(circulo, amarelo), peca(circulo, azul),peca(triangulo, amarelo), peca(triangulo, vermelho), peca(quadrado, vermelho), 
 peca(quadrado, amarelo), peca(quadrado, azul), peca(circulo, vermelho)]).

% adiciona a peca as "lista" das pecas usadas
adicionaPecaUsadas(X):- assert(X).

% mostra as pecas que ainda nao foram usadas
pecasNaoUsadas(X) :- todasPecas(Y), ! , membro(X, Y), not(X).

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
trioLeft(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro), adicionaPecaUsadas(Peca).
trioLeft(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro), adicionaPecaUsadas(Peca).
cobra(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro), adicionaPecaUsadas(Peca).
tSimples(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro), adicionaPecaUsadas(Peca).
tLeft(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro), adicionaPecaUsadas(Peca).
tRight(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro), adicionaPecaUsadas(Peca).
tInvertido(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro), adicionaPecaUsadas(Peca).
cantoTopLeft(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro), adicionaPecaUsadas(Peca).
cantoTopRight(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro), adicionaPecaUsadas(Peca).
cantoBottomLeft(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro), adicionaPecaUsadas(Peca).
cantoBottomRight(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro), adicionaPecaUsadas(Peca).
diagonalGrave(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro), adicionaPecaUsadas(Peca).
diagonalAguda(Peca, Linha, Coluna, Tabuleiro) :- coloca(Peca, Linha, Coluna, Tabuleiro), adicionaPecaUsadas(Peca).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TODO:
% - ter uma lista que contem todas as pecas possiveis, sempre que
%   uma peca e adicionada ao tabuleiro, remove-la dessa lista	
%	|OU| uma lista que faca o tracking das pecas usadas(melhor?)
%   (para saber que pecas falta colocar no check/2).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**************************************************
% devolve os elemns que ja foram adicionados ao tab
k(X) :- todasPecas(Y), ! , membro(X, Y), X.
**************************************************/
