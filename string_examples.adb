-- File: string_examples.adb
with Ada.Text_IO;            use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Fixed;     use Ada.Strings.Fixed;

procedure String_Examples is
   -- Fixed-length string
   S1: String(1 .. 10) := "Hello     ";
   
   -- Unbounded string
   S2: Unbounded_String := To_Unbounded_String("World");
   
   -- Trimmed string
   S3: String(1 .. 5) := Trim(S1, Both);
begin
   -- Print fixed-length string
   Put_Line("Fixed-length string: '" & S1 & "'");
   
   -- Append to unbounded string
   S2 := S2 & "!" & " Ada";
   Put_Line("Unbounded string: '" & To_String(S2) & "'");
   
   -- Print trimmed string
   Put_Line("Trimmed string: '" & S3 & "'");
end String_Examples;
