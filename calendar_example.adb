-- File: calendar_example.adb
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;  -- This makes Hour/Minute/Second visible

procedure Calendar_Example is
   Now: constant Time := Clock;
begin
   -- Use fully qualified names OR rely on "use Ada.Calendar"
   Put_Line("Current date: " &
            Integer'Image(Integer(Year(Now))) & "/" &
            Integer'Image(Integer(Month(Now))) & "/" &
            Integer'Image(Integer(Day(Now))));

   -- FIX: Use Ada.Calendar.Hour, etc. (or rely on "use Ada.Calendar")
   Put_Line("Current time: " &
            Integer'Image(Integer(Hour(Now))) & ":" &  -- Now visible via "use Ada.Calendar"
            Integer'Image(Integer(Minute(Now))) & ":" &
            Integer'Image(Integer(Second(Now))));
end Calendar_Example;
