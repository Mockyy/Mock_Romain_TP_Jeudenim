{ALGORITHME : Jeu_de_nim

But : simuler le jeu des allumettes (ou jeu de nim).

Principe : Chaque joueur peut retirer une, deux ou trois allumettes parmi un paquet initial de 21 allumettes. Le joueur qui retire la dernière allumette perds.

Entrée : un entier compris entre 1 et 3 : le nombre d allumettes retirées.

Sortie : Un bouléen : la victoire d un des deux joueur.


CONST	
	INTMIN <- 1
	INTMAX <- 3
	FIN <- 1
	TAS <- 21
	INCREMENTE <- 1
	PAIR <- 2

VAR
	pioche, paquet, tour : ENTIER
	joueur : CHAINE


DEBUT

paquet <- TAS
tour <- INCREMENTE

REPETER

	SI tour MOD PAIR = 1 ALORS

		joueur <- '1'

	SINON

		joueur <- '2'

	FINSI

	ECRIRE "Tour du joueur ",joueur,". Combien voulez-vous retirer d'allumettes ?"

	TANTQUE (pioche < INTMIN) OU (pioche > INTMAX) FAIRE

		LIRE pioche

	FINTANTQUE

	paquet <- paquet - pioche

	tour <- tour + INCREMENTE

JUSQUA (paquet = FIN)

ECRIRE "Le joueur ",joueur," a perdu en ",tour,"tours. Ce gros naze."

FIN}









PROGRAM nimpas;

USES crt;


CONST
	
	INTMIN = 1;
	INTMAX = 3;
	FIN = 0;
	TAS = 21;
	INCREMENTE = 1;
	PAIR = 2;

VAR
	
	pioche, paquet, tour, max : integer;
	joueur : string;

BEGIN

clrscr;

paquet:=TAS;
tour:=INCREMENTE;
max:=INTMAX;


REPEAT

	writeln;
	Writeln('Il reste ',paquet,' allumettes.');

	If tour MOD PAIR = 1 then

		joueur:='1'

	else

		joueur:='2';

	writeln;
	writeln('Tour du joueur ',joueur,'. Combien voulez-vous retirer d allumettes ? Entre ',INTMIN,' et ',max,'.');
	
	readln(pioche);

	While (pioche < INTMIN) OR (pioche > max) do
		begin

			readln(pioche);

		end;

	paquet:=paquet - pioche;

	If paquet < max then

		max:=paquet;

	tour:=tour + INCREMENTE;


UNTIL (paquet = FIN);

writeln('Le joueur ',joueur,' a perdu en ',tour,' tours.');

readln;

END.