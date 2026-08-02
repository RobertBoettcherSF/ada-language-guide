-- File: user_input.adb
with Ada.Text_IO; use Ada.Text_IO;

procedure User_Input is
   Name: String(1 .. 50);  -- Fixed-length string
   Length: Integer;
begin
   Put_Line("Enter your name:");
   Get_Line(Name, Length);  -- Read input into Name, store length in Length
   Put_Line("Hello, " & Name(1 .. Length) & "!");
end User_Input;
