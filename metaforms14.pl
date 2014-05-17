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

['metaforms12.pl'].



membro(X, [X|_]).
membro(X, [_|R]) :- membro(X, R).



trioLeft(Peca, Linha, Coluna, Tabuleiro) :- rectanguloVertical(Peca, Linha, Coluna, Tabuleiro).

trioRight(Peca, Linha, Coluna, Tabuleiro):- rectanguloVertical(Peca, Linha, Coluna, Tabuleiro).

cobra(Peca, Linha, Coluna, Tabuleiro) :- rectanguloVertical(Peca, Linha, Coluna, Tabuleiro).

tLeft(Peca, Linha, Coluna, Tabuleiro) :- rectanguloVertical(Peca, Linha, Coluna, Tabuleiro).

tRight(Peca, Linha, Coluna, Tabuleiro) :- rectanguloVertical(Peca, Linha, Coluna, Tabuleiro).

tSimples(Peca, Linha, Coluna, Tabuleiro) :- rectanguloHorizontal(Peca, Linha, Coluna, Tabuleiro).

tInvertido(Peca, Linha, Coluna, Tabuleiro) :- rectanguloHorizontal(Peca, Linha, Coluna, Tabuleiro).

diagonalAguda(Peca, Linha, Coluna, Tabuleiro) :- quadrado(Peca, Linha, Coluna, Tabuleiro).

diagonalGravePeca, Linha, Coluna, Tabuleiro) :- quadrado(Peca, Linha, Coluna, Tabuleiro).

cantoTopLeft(Peca, Linha, Coluna, Tabuleiro) :- quadrado(Peca, Linha, Coluna, Tabuleiro).

cantoTopRight(Peca, Linha, Coluna, Tabuleiro) :- quadrado(Peca, Linha, Coluna, Tabuleiro).

cantoBottomLeft(Peca, Linha, Coluna, Tabuleiro) :- quadrado(Peca, Linha, Coluna, Tabuleiro).

cantoBottomRight(Peca, Linha, Coluna, Tabuleiro) :- quadrado(Peca, Linha, Coluna, Tabuleiro).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%       PREDICADO CHECK
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

peca(triangulo, vermelho).
peca(triangulo, azul).
peca(triangulo, amarelo).
peca(quadrado, vermelho).
peca(quadrado, azul).
peca(quadrado, amarelo).
peca(circulo, vermelho).
peca(circulo, azul).
peca(circulo, amarelo).


check(Tabuleiro, TabuleiroCompleto):- check(Tabuleiro, TabuleiroCompleto, [peca(triangulo, vermelho),peca(triangulo, azul),peca(triangulo, amarelo),peca(quadrado, vermelho),peca(quadrado, azul),peca(quadrado, amarelo),peca(circulo, vermelho),peca(circulo, azul),peca(circulo, amarelo)]).

check(Tabuleiro, TabuleiroCompleto, [X|R]) :-  membro(X, Tabuleiro), check(Tabuleiro, TabuleiroCompleto, R).




