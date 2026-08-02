-- File: control_structures.adb
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Control_Structures is
   Number: Integer;
   Choice: Character;
begin
   -- if-else statement
   Put("Enter a number: ");
   Get(Number);
   
   if Number > 0 then
      Put_Line("Positive");
   elsif Number < 0 then
      Put_Line("Negative");
   else
      Put_Line("Zero");
   end if;
   
   -- case statement
   Put("Enter a letter (A/B/C): ");
   Get(Choice);
   Skip_Line;  -- Skip the newline after Get
   
   case Choice is
      when 'A' | 'a' =>
         Put_Line("You chose A");
      when 'B' | 'b' =>
         Put_Line("You chose B");
      when 'C' | 'c' =>
         Put_Line("You chose C");
      when others =>
         Put_Line("Invalid choice");
   end case;
   
   -- loop statement
   Put_Line("Counting from 1 to 5:");
   for I in 1 .. 5 loop
      Put_Line(Integer'Image(I));
   end loop;
end Control_Structures;
