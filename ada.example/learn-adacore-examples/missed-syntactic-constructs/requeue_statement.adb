procedure Requeue_Statement is
begin
	requeue Request(Medium) with abort;
	requeue Request(Medium);
end Requeue_Statement;