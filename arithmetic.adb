-- File: arithmetic.adb
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

procedure Arithmetic is
   A, B: Integer;
   Sum, Difference, Product: Integer;
   Quotient: Float;
begin
   -- Read integers
   Put("Enter first integer: ");
   Get(A);
   Put("Enter second integer: ");
   Get(B);
   
   -- Perform arithmetic
   Sum := A + B;
   Difference := A - B;
   Product := A * B;
   Quotient := Float(A) / Float(B);  -- Explicit conversion to Float
   
   -- Print results
   Put_Line("Sum: " & Integer'Image(Sum));
   Put_Line("Difference: " & Integer'Image(Difference));
   Put_Line("Product: " & Integer'Image(Product));
   Put_Line("Quotient: " & Float'Image(Quotient));
end Arithmetic;
