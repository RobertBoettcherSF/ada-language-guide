-- File: calendar_example.adb
with Ada.Text_IO;            use Ada.Text_IO;
with Ada.Calendar;           use Ada.Calendar;
with Ada.Calendar.Formatting; use Ada.Calendar.Formatting;

procedure Calendar_Example is
   Now: Time := Clock;  -- Current time
begin
   -- Print formatted date and time using individual functions
   Put_Line("Current date: " &
            Year_Number'Image(Year(Now)) & "/" &
            Month_Number'Image(Month(Now)) & "/" &
            Day_Number'Image(Day(Now)));

   Put_Line("Current time: " &
            Hour_Number'Image(Hour(Now)) & ":" &
            Minute_Number'Image(Minute(Now)) & ":" &
            Second_Number'Image(Second(Now)));
end Calendar_Example;
