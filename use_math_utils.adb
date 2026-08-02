-- File: use_math_utils.adb
with Ada.Text_IO;      use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Math_Utils;       use Math_Utils;

procedure Use_Math_Utils is
   A, B: Integer;
begin
   Put("Enter first number: ");
   Get(A);
   Put("Enter second number: ");
   Get(B);
   
   Put_Line("Sum: " & Integer'Image(Add(A, B)));
   Put_Line("Difference: " & Integer'Image(Subtract(A, B)));
end Use_Math_Utils;
