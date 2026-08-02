-- File: subprograms.adb
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Subprograms is
   -- Function: Returns a value
   function Square(X: Integer) return Integer is
   begin
      return X * X;
   end Square;
   
   -- Procedure: Performs an action
   procedure Print_Square(X: Integer) is
   begin
      Put_Line(Integer'Image(X) & " squared = " & Integer'Image(Square(X)));
   end Print_Square;
   
   N: Integer;
begin
   Put("Enter a number: ");
   Get(N);
   Print_Square(N);
end Subprograms;
