package Rename_Exception is
	Status_Error : exception renames Ada.IO_Exceptions.Status_Error;
	Name_Error : exception renames Ada.IO_Exceptions.Name_Error;
	Use_Error : exception renames Ada.IO_Exceptions.Use_Error;
	Device_Error : exception renames Ada.IO_Exceptions.Device_Error;
private
-- not specified by the language
end Rename_Exception;