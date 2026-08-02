-- File: calendar_example.adb
with Ada.Text_IO;            use Ada.Text_IO;
with Ada.Calendar;           use Ada.Calendar;
with Ada.Calendar.Formatting; use Ada.Calendar.Formatting;

procedure Calendar_Example is
   Now: Time := Clock;  -- Current time
   Year: Year_Number;
   Month: Month_Number;
   Day: Day_Number;
