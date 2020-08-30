with Ada.Unchecked_Conversion;
generic function Unchecked_Conversion renames Ada.Unchecked_Conversion;

with Ada.Unchecked_Deallocation;
generic procedure Unchecked_Deallocation renames Ada.Unchecked_Deallocation;

with Ada.Sequential_IO;
generic package Sequential_IO renames Ada.Sequential_IO;

with Ada.Direct_IO;
generic package Direct_IO renames Ada.Direct_IO;

with Ada.Text_IO;
package Text_IO renames Ada.Text_IO;

with Ada.IO_Exceptions;
package IO_Exceptions renames Ada.IO_Exceptions;

with Ada.Calendar;
package Calendar renames Ada.Calendar;

with System.Machine_Code;
package Machine_Code renames System.Machine_Code; -- If supported