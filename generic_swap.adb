-- File: generic_swap.adb
with Ada.Text_IO; use Ada.Text_IO;

procedure Generic_Swap is
   -- Generic procedure to swap two values of any type
   generic
      type T is private;  -- T can be any type
   procedure Swap(X, Y: in out T);
   
   -- Implementation of Swap
   procedure Swap(X, Y: in out T) is
      Temp: T := X;
   begin
      X := Y;
      Y := Temp;
   end Swap;
   
   -- Instantiate Swap for Integer
   procedure Swap_Int is new Swap(T => Integer);
   
   A, B: Integer := 5, 10;
begin
   Put_Line("Before swap: A = " & Integer'Image(A) & ", B = " & Integer'Image(B));
   Swap_Int(A, B);
   Put_Line("After swap: A = " & Integer'Image(A) & ", B = " & Integer'Image(B));
end Generic_Swap;
