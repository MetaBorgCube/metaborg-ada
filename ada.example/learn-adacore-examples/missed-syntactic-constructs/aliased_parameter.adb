package Show_Aliased is
function Find (B : aliased in out Barrel; Key : String) return Ref_Element;
-- Return a reference to an element of a barrel.
B: aliased Barrel;
end Show_Aliased;