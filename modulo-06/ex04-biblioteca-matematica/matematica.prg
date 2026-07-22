FUNCTION FatorialN(nN)

   LOCAL nI, nFat := 1

   FOR nI := 1 TO nN
      nFat := nFat * nI
   NEXT

RETURN nFat

FUNCTION EhPrimo(nN)

   LOCAL nI

   IF nN < 2
      RETURN .F.
   ENDIF

   FOR nI := 2 TO nN - 1
      IF nN % nI == 0
         RETURN .F.
      ENDIF
   NEXT

RETURN .T.

FUNCTION MDC(nA, nB)

   LOCAL nTemp

   WHILE nB # 0
      nTemp := nB
      nB := nA % nB
      nA := nTemp
   ENDDO
RETURN nA
FUNCTION MMC(nA, nB)
RETURN (nA * nB) / MDC(nA, nB)
