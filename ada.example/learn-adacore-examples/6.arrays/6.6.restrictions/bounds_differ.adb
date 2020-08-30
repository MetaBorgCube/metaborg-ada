with Ada.Text_IO;

procedure Bounds_differ is
begin
  declare
   	A : String := "Hello";
	begin
   	A := "World";       --  OK: Same size
   	A := "Hello World"; --  Not OK: Different size
	end;
end Bounds_differ;