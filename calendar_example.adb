-- File: calendar_example.adb
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;

procedure Calendar_Example is
   Now: Time := Clock;  -- Current time
begin
   -- Use Integer'Image for all components (no ambiguity)
   Put_Line("Current date: " &
            Integer'Image(Integer(Year(Now))) & "/" &
            Integer'Image(Integer(Month(Now))) & "/" &
            Integer'Image(Integer(Day(Now))));

   Put_Line("Current time: " &
            Integer'Image(Integer(Hour(Now))) & ":" &
            Integer'Image(Integer(Minute(Now))) & ":" &
            Integer'Image(Integer(Second(Now))));
end Calendar_Example;
