procedure Rename_Object is
begin
	declare
		L : Person renames Leftmost_Person; -- see 3.10.1
	begin
		L.Age := L.Age + 1;
	end;
end Rename_Object;