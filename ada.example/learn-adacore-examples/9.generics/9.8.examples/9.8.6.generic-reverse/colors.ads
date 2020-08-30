with Generic_Reverse_Array;

package Colors is

   type Color is (Black, Red, Green, Blue, White);

   type Color_Array is array (Integer range <>) of Color;

   procedure Reverse_Color_Array is new Generic_Reverse_Array
     (T => Color, Index => Integer, Array_T => Color_Array);

end Colors;