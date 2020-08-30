package Colors is

   type Color is (Black, Red, Green, Blue, White);

   type Color_Array is array (Integer range <>) of Color;

   procedure Reverse_Color_Array (X : in out Color_Array);

end Colors;