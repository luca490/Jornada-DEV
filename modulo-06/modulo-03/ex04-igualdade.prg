FUNCTION Main()
    LOCAL cString1 := "Harbour"
    LOCAL cString2 := "Harb"
    QOut("cString1: " + cString1)
    QOut("cString2: " + cString2)
    QOut("Comparando com '=' (atribuicao):")
    cString1 = cString2
    QOut("cString1 agora eh: " + cString1)

    cString1 := "Harbour"

    QOut("")
    QOut("Comparando com '==' (igualdade):")
    IF cString1 == cString2
        QOut("As strings sao iguais.")
    ELSE
        QOut("As strings sao diferentes.") 
    ENDIF
