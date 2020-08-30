procedure Show_Goto_Statement is
begin
	<<Sort>>
	for I in 1 .. N-1 loop
		if A(I) > A(I+1) then
			Exchange(A(I), A(I+1));
			goto Sort;
		end if;
	end loop;
end Show_Goto_Statement;