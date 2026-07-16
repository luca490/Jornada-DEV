#define PI 3.14159

FUNCTION Main()
    LOCAL nRaio := 0

    QOut("==========================================")
    QOut("         CALCULOS MATEMATICOS")
    QOut("==========================================")
    hb_idleSleep(1)
    INPUT "Informe o valor do raio do circulo: " TO nRaio
    nAreaCirculo := PI * (nRaio ^ 2)
    QOut("")
    QOut("Area do circulo: " + Str(nAreaCirculo, 10, 2))

    hb_idleSleep(1)

    QOut("")
    QOut("==========================================================")
    QOut("AGORA, CALCULAREMOS A HIPOTENUSA DE UM TRIANGULO RETANGULO")
    QOut("==========================================================")
    
    hb_idleSleep(1)

    INPUT "Informe o valor do cateto A: " TO nCatetoA
    INPUT "Informe o valor do cateto B: " TO nCatetoB
    nHipotenusa := Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2))
    QOut("")
    QOut("Hipotenusa do triangulo: " + Str(nHipotenusa, 10, 2))

    hb_idleSleep(1)

    QOut("")
    QOut("====================================================")
    QOut("AGORA, CALCULAREMOS O ÍNDICE DE MASSA CORPORAL (IMC)")
    QOut("====================================================")

    hb_idleSleep(1)
    
    nPeso := 0
    nAltura := 0
    nIMC := 0
    INPUT "Informe o valor do peso (kg): " TO nPeso
    INPUT "Informe o valor da altura (m): " TO nAltura
    nIMC := nPeso / (nAltura ^ 2)
    QOut("")
    QOut("Índice de Massa Corporal (IMC): " + Str(nIMC, 10, 2))
RETURN NIL
