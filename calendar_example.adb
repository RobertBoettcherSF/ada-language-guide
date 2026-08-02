-- File: calendar_example.adb
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar;  -- Do NOT use "use Ada.Calendar" to avoid ambiguity

procedure Calendar_Example is
   Now: constant Ada.Calendar.Time := Ada.Calendar.Clock;
begin
   -- Use fully qualified names for all functions
   Put_Line("Current date: " &
            Integer'Image(Integer(Ada.Calendar.Year(Now))) & "/" &
            Integer'Image(Integer(Ada.Calendar.Month(Now))) & "/" &
            Integer'Image(Integer(Ada.Calendar.Day(Now))));

   Put_Line("Current time: " &
            Integer'Image(Integer(Ada.Calendar.Hour(Now))) & ":" &
            Integer'Image(Integer(Ada.Calendar.Minute(Now))) & ":" &
            Integer'Image(Integer(Ada.Calendar.Second(Now))));
end Calendar_Example;
