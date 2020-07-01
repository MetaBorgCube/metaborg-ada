function Quadruple (I : Integer) return Integer is
    function Double (I : Integer) return Integer is
    begin
       return I * 2;
    end Double;

   Res : Integer := Double (Double (I));
   --               ^ Calling the double function
begin
   Double (I);
   --  ERROR: cannot use call to function "Double" as a statement

   return Res;
end Quadruple;