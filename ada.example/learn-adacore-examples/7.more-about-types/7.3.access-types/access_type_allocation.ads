with Dates; use Dates;

package Access_Types is
    --  Declare an access type
    type Date_Acc   is access Date;
    type Date_Acc_2 is access Date;

    D  : Date_Acc   := null;
    D2 : Date_Acc_2 := D;
    --                 ^ Invalid! Different types

    D3 : Date_Acc_2 := Date_Acc_2 (D);
    --                 ^ Valid with type conversion
end Access_Types;