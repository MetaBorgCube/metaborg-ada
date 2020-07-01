with Ada.Text_IO; use Ada.Text_IO;

procedure Illegal_Example is
   --  Declare two different floating point types
   type Meters is new Float;
   type Miles is new Float;

   Dist_Imperial : Miles;

   --  Declare a constant
   Dist_Metric : constant Meters := 100.0;
begin
   --  Not correct: types mismatch
   Dist_Imperial := (Dist_Metric * 1609.0) / 1000.0;
   Put_Line (Miles'Image (Dist_Imperial));
end Illegal_Example;