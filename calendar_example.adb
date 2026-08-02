-- File: calendar_example.adb
with Ada.Text_IO;            use Ada.Text_IO;
with Ada.Calendar;           use Ada.Calendar;
with Ada.Calendar.Formatting; use Ada.Calendar.Formatting;

procedure Calendar_Example is
   Now: Time := Clock;  -- Current time
   Year: Year_Number;
   Month: Month_Number;
   Day: Day_Number;
   Seconds: Second_Number;
begin  -- <-- MISSING IN YOUR FILE
   -- Split time into components
   Split(Now, Year, Month, Day, Seconds);

   -- Print formatted date
   Put_Line("Current date: " &
            Year_Number'Image(Year) & "/" &
            Month_Number'Image(Month) & "/" &
            Day_Number'Image(Day));

   -- Print formatted time
   Put_Line("Current time: " &
            Hour_Number'Image(Hour(Now)) & ":" &
            Minute_Number'Image(Minute(Now)) & ":" &
            Second_Number'Image(Seconds));
end Calendar_Example;  -- <-- MISSING IN YOUR FILE
