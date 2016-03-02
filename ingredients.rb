PROGRAM GroceryShopping
    Aisle = 1
  Foods needed = N
  N = (milk,orange,bread,eggs,tomato,potato,salad,brocolli,apple)
  WHILE (aisle != 11) DO
      For EACH item in aisle DO
        IF (item == ANY of N) THEN
          Add item to the cart
          Update cart
        ELSE
          skip to the next item
        END
        If all item in cart:
          break
        Else:
          Continue
      Aisle = aisle +1
  END
END
