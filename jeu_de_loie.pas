program jeu_de_loie;

uses crt;

CONST
    CASE_MORT = 58;
    CASE_FIN = 66;
    MULTIPLE = 9;

VAR
    pos,des : INTEGER;

BEGIN
    pos := 0;
    
    repeat
        clrscr;
        writeln('Vous êtes à la case ',pos);
        {repeat
            writeln('Entrez le résultat de vos dés');
            readln(des);
        until (des>=2) AND (des<=12);}
        randomize;
        des := random(11)+2;
        writeln(des);
        readln();
        pos := pos+des;
        IF (pos MOD MULTIPLE = 0) AND (pos < CASE_FIN - MULTIPLE) AND (pos > 1) THEN
            pos := pos + des;
        IF pos > CASE_FIN THEN
            pos := CASE_FIN - (pos - CASE_FIN);
        IF pos = CASE_MORT THEN
            BEGIN       
                writeln('PAS DE CHANCE, RETOUR AU DEBUT');
                readln();
                pos := 0;
            END;
        readln();
    until (pos = CASE_FIN);
    writeln('Victoire');
    readln();
END.