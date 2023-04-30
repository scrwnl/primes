PROGRAM MAIN
    IMPLICIT NONE
    INTEGER::COUNTER=1
    
    DO
        IF(IS_PRIME(COUNTER)) THEN
            PRINT "(I0)",COUNTER
        END IF
        COUNTER=COUNTER+1
    END DO
    
CONTAINS
    LOGICAL FUNCTION IS_PRIME(NUMBER)
        IMPLICIT NONE
        INTEGER I,NUMBER
    
        IF(NUMBER .LT. 2) THEN
            IS_PRIME=.FALSE.
        ELSE
            IS_PRIME=.TRUE.
            DO I=2,NUMBER
                IF(I*I .GT. NUMBER) THEN
                    EXIT
                ELSE IF(MOD(NUMBER,I).EQ.0) THEN
                    IS_PRIME=.FALSE.
                    EXIT
                ENDIF
            END DO
        END IF
        RETURN
    END FUNCTION
END PROGRAM MAIN
