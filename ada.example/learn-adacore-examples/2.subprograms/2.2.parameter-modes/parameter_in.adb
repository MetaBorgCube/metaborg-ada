procedure Swap (A, B : in Integer) is
   Tmp : Integer;
begin
   Tmp := A;

   --  Error: assignment to "in" mode parameter not allowed
   A := B;
   --  Error: assignment to "in" mode parameter not allowed
   B := Tmp;
end Swap;