with Ada.Text_IO; use Ada.Text_IO;

procedure Conv is
   type Meters is new Float;
   type Miles is new Float;

   --  Function declaration, like procedure but returns a value.
   function To_Miles (M : Meters) return Miles is
   --                             ^ Return type
   begin
      return (Miles (M) * 1609.0) / 1000.0;
   end To_Miles;

   Dist_Imperial : Miles;
   Dist_Metric   : constant Meters := 100.0;
begin
   Dist_Imperial := To_Miles (Dist_Metric);
   Put_Line (Miles'Image (Dist_Imperial));
end Conv;