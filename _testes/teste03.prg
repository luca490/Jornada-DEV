#define _TESTE03 "Teste03"

FUNCTION Main()
/* 
LOCAL - ideal
PRIVATE - dados ..
PUBLIC - 
STATIC - 
*/
    _TESTE03 := "Teste04"
    QOut(_TESTE03)
    PUBLIC nNumero := 50
    Operacoes()
    Soma()     

RETURN NIL

FUNCTION Operacoes() 
    nNumero := 66
    //PRIVATE nNumero := 10

    Soma()
    Substrai()

RETURN NIL       

FUNCTION Soma()
    //LOCAL nNumero := 20
    QOut(nNumero)
    QOut("Função Soma")
RETURN NIL

FUNCTION Substrai()
    //LOCAL nNumero := 30
    QOut(nNumero)  
    QOut("Função Substrai")
RETURN NIL
