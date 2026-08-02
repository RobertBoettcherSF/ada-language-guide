-- File: calendar_example.adb
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;
with Ada.Calendar.Formatting; use Ada.Calendar.Formatting;

procedure Calendar_Example is
   Now: Time := Clock;
begin
   -- Use the built-in Image function to print the full date/time
   Put_Line("Current date and time: " & Image(Now));
end Calendar_Example;
