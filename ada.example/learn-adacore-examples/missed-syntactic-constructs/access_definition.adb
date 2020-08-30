package Show_Access_Definition is
	type Timing_Event_Handler
			is access protected procedure (Event : in out Timing_Event);
end Show_Access_Definition;