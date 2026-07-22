FUNCTION Main()
    LOCAL cNum1 := ""
    LOCAL cNum2 := ""
    LOCAL nNum1 := 0
    LOCAL nNum2 := 0
    QOut("==============================")
    QOut("COMPARADOR DE NUMEROS")
    QOut("==============================")
    
    ACCEPT "Digite um numero: " TO cNum1
    ACCEPT "Digite outro numero: " TO cNum2

    nNum1 := Val( cNum1 )
    nNum2 := Val( cNum2 )

    IF nNum1 == nNum2
        QOut( "Os dois numeros sao iguais." )
    ELSE
        IF nNum1 > nNum2
            QOut( "Maior: " + AllTrim( Str( nNum1 ) ) )
            QOut( "Menor: " + AllTrim( Str( nNum2 ) ) )
        ELSE
            QOut( "Maior: " + AllTrim( Str( nNum2 ) ) )
            QOut( "Menor: " + AllTrim( Str( nNum1 ) ) )
        ENDIF
    ENDIF
RETURN NIL
