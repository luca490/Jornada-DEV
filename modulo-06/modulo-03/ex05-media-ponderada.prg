FUNCTION Main()
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nNota3 := 0
    LOCAL nNota4 := 0
    LOCAL nMediaPonderada := 0
    QOut("==========================================")
    QOut("     MEDIA PONDERADA DO ALUNO")
    QOut("==========================================")
    hb_idleSleep(1)
    INPUT "Informe a primeira nota: " TO nNota1
    INPUT "Informe a segunda nota: " TO nNota2
    INPUT "Informe a terceira nota: " TO nNota3
    INPUT "Informe a quarta nota: " TO nNota4

    nMediaPonderada := (nNota1*1+nNota2*2+nNota3*3+nNota4*4) / (1+2+3+4)

    QOut("")
    QOut("==========================================")
    QOut("       RESUMO DAS NOTAS")
    QOut("==========================================")
    QOut("Primeira Nota:     " + Str(nNota1, 10, 2))
    QOut("Segunda Nota:      " + Str(nNota2, 10, 2))
    QOut("Terceira Nota:     " + Str(nNota3, 10, 2))
    QOut("Quarta Nota:       " + Str(nNota4, 10, 2))
    QOut("Media Ponderada:   " + Str(nMediaPonderada, 10, 2))
    QOut("==========================================")
RETURN NIL
