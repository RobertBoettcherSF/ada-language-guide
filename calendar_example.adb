-- File: calendar_example.adb
with Ada.Text_IO;            use Ada.Text_IO;
with Ada.Calendar;           use Ada.Calendar;
with Ada.Calendar.Formatting; use Ada.Calendar.Formatting;

procedure Calendar_Example is
   Now: Time := Clock;
   Year: Year_Number;
   Month: Month_Number;
   Day: Day_Number;
   Hour: Hour_Number;
   Minute: Minute_Number;
   Second: Second_Number;
   Seconds: Day_Duration;  -- Required for Split
begin
   -- Split the time into components
   Split(Now, Year, Month, Day, Seconds);

   -- Extract hour, minute, second from Seconds (if needed)
   -- For simplicity, just print date and total seconds
   Put_Line("Current date: " &
            Year_Number'Image(Year) & "/" &
            Month_Number'Image(Month) & "/" &
            Day_Number'Image(Day));

   -- Print time using Hour, Minute, Second functions
   Put_Line("Current time: " &
            Hour_Number'Image(Hour(Now)) & ":" &
            Minute_Number'Image(Minute(Now)) & ":" &
            Second_Number'Image(Second(Now)));
end Calendar_Example;
