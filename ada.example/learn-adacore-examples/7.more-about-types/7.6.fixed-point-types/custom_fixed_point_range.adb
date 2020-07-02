with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Numerics; use Ada.Numerics;

procedure Custom_Fixed_Point_Range is
   type T_Inv_Trig is delta 2.0 ** (-15) * Pi range -Pi / 2.0 .. Pi / 2.0;
begin
   Put_Line ("T_Inv_Trig requires " & Integer'Image (T_Inv_Trig'Size)
             & " bits");
   Put_Line ("The delta    value of T_Inv_Trig is "
             & T_Inv_Trig'Image (T_Inv_Trig'Delta));
   Put_Line ("The minimum  value of T_Inv_Trig is "
             & T_Inv_Trig'Image (T_Inv_Trig'First));
   Put_Line ("The maximum  value of T_Inv_Trig is "
             & T_Inv_Trig'Image (T_Inv_Trig'Last));
end Custom_Fixed_Point_Range;