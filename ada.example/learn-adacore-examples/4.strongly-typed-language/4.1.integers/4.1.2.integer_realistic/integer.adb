with Ada.Text_IO; use Ada.Text_IO;

procedure Integer_Realistic is
   --  Declare a signed integer type, and give the bounds
   type Integer is range -(2 * 31) .. +(2 * 31 - 1);
   --                         					^ High bound
   --                   ^ Low bound

   --  Like variables, type declarations can only appear in
   --  declarative regions
begin
   for I in My_Int loop
      Put_Line (My_Int'Image (I));
      --              ^ 'Image attribute, converts a value to a
      --                 String
   end loop;
end Integer_Type_Example;