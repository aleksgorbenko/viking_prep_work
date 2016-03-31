PROGRAM CounterGame

  PlayerNumber = (1:10)
  Direction forward = true
  Skip = False
  Step = 1
  N = 1
        
    WHILE (True) DO
      IF N == 100:
        BREAK LOOP
      
      IF N / 7 returns no remainder THEN
        Direction forward = false

      IF N / 11 returns no remainder THEN
        Skip = True
          IF Skip:
            Step = 2
      
      
      If Direction forward = true THEN
        PlayerNumber = PlayerNumber + step
      ELSE
        PlayerNumber = PlayerNumber - step


      IF PlayerNumber  = 10 AND
        IF Direction forward = true THEN
          NEXT PlayerNumber  = 1
      IF PlayerNumber  = 1 AND
        IF Direction forward = false THEN
          NEXT PlayerNumber  = 10

      N = N + 1
    END

  IF N == 100 THEN
  Print = PlayerNumber
END
