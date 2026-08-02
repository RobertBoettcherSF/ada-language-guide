-- File: calendar_example.adb
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;

procedure Calendar_Example is
   Now: Time := Clock;
begin
   -- Print date components (Year/Month/Day are always available)
   Put_Line("Current date: " &
            Year(Now)'Image & "/" &
            Month(Now)'Image & "/" &
            Day(Now)'Image);

   -- Print time components (Hour/Minute/Second are available in Ada.Calendar)
   Put_Line("Current time: " &
            Hour(Now)'Image & ":" &   -- FIX: Use Hour(Now)'Image, NOT Hour_Number'Image(Hour(Now))
            Minute(Now)'Image & ":" &
            Second(Now)'Image);
end Calendar_Example;
