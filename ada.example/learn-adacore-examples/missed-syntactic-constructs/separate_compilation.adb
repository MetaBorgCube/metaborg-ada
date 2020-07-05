package body Parent is
	Variable : String := "Hello, there.";
	procedure Inner is separate;
end Parent;

with Ada.Text_IO;

separate(Parent)
procedure Inner is
begin
	Ada.Text_IO.Put_Line(Variable);
end Inner;