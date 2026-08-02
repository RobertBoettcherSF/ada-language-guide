-- File: calendar_example.adb
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;  -- Only use Ada.Calendar (not Formatting)

procedure Calendar_Example is
   Now: Time := Clock;  -- Current time
begin
   -- Use fully qualified names to avoid ambiguity
   Put_Line("Current date: " &
            Ada.Calendar.Year_Number'Image(Ada.Calendar.Year(Now)) & "/" &
            Ada.Calendar.Month_Number'Image(Ada.Calendar.Month(Now)) & "/" &
            Ada.Calendar.Day_Number'Image(Ada.Calendar.Day(Now)));

   Put_Line("Current time: " &
            Ada.Calendar.Hour_Number'Image(Ada.Calendar.Hour(Now)) & ":" &
            Ada.Calendar.Minute_Number'Image(Ada.Calendar.Minute(Now)) & ":" &
            Ada.Calendar.Second_Number'Image(Ada.Calendar.Second(Now)));
end Calendar_Example;
