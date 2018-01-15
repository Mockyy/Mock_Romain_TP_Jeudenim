{ALGORITHME : Jeu_de_nim

But : simuler le jeu des allumettes (ou jeu de nim).

Principe : Le joueur et l ordinateur retirent, à tour de rôle, une, deux ou trois allumettes parmi un paquet initial de 21 allumettes. Le joueur qui retire la dernière allumette perds.

Entrée : un entier compris entre 1 et 3 : le nombre d allumettes retirées.

Sortie : Un bouléen : la victoire d un des deux joueur.


CONST	
	INTMIN <- 1
	INTMAX <- 3
	FIN <- 0
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

	ECRIRE "Il reste ",paquet," allumettes."
	ECRIRE "Combien voulez-vous retirer d'allumettes ? (3 max)"

	TANTQUE (pioche < INTMIN) OU (pioche > INTMAX) FAIRE

		LIRE pioche

	FINTANTQUE

	paquet <- paquet - pioche

	SI paquet <> FIN ALORS

		pioche <- aléatoire(3)
		
		ECRIRE "L'ordinateur a retiré ",pioche, "allumettes."

	FINSI


JUSQUA (paquet = FIN)

ECRIRE "T'as perdu gros naze."

FIN}










PROGRAM nimbotpas;

USES crt;


CONST
	
	INTMIN = 1;
	INTMAX = 3;
	FIN = 1;
	TAS = 21;
	INCREMENTE = 1;
	PAIR = 2;

VAR
	
	pioche, paquet, tour, max, bot : integer;
	joueur : string;
	victoire : boolean;

BEGIN

Randomize;

clrscr;

paquet:=TAS;
tour:=INCREMENTE;
max:=INTMAX;
victoire:=true;

REPEAT

	writeln('Il reste ',paquet,' allumettes.');
	writeln('Combien voulez-vous retirer d allumettes ? (3 max)');

	While (pioche < INTMIN) OR (pioche > INTMAX) do
		begin
		readln(pioche);
		end;

	paquet := paquet - pioche;

	If paquet < FIN then

		victoire := false

	else
		begin
		pioche := random(2)+1;
		Writeln('L ordinateur a retire ',pioche, ' allumettes.');
		paquet := paquet - pioche;
		end;

pioche:=0;

UNTIL (paquet < FIN);

If victoire = true then
	Writeln('Victoire !')
else
	writeln('Defaite !');
readln;

END.