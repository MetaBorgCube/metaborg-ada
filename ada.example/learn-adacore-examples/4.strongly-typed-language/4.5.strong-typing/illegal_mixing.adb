procedure Main is
   A : Integer := 3;
   B : Integer := 2;
   F : Float;
begin
   F := A / B; -- Compiler shouldn't accept. Change to: `F := Float (A) / Float (B);`.
end Main;