with Ada.Text_IO; use Ada.Text_IO;
with Ada.Exceptions;  use Ada.Exceptions;

procedure Open_File is
   File : File_Type;
begin
   --  Block (sequence of statements)
   begin
      Open (File, In_File, "input.txt");
   exception
      when E : Name_Error =>
      --       ^ Exception to be handled
         Put ("Cannot open input file : ");
         Put_Line (Exception_Message (E));
         raise;
         --  Reraise current occurence
   end;
end Open_File;