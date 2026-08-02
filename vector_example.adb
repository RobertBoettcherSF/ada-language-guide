-- File: vector_example.adb
with Ada.Text_IO;                 use Ada.Text_IO;
with Ada.Containers.Vectors;

procedure Vector_Example is
   -- Define a vector of integers
   package Integer_Vectors is new Ada.Containers.Vectors(
      Index_Type => Natural,    -- Index type must match the loop variable
      Element_Type => Integer
   );
   use Integer_Vectors;

   V: Vector;
begin
   -- Append elements
   V.Append(10);
   V.Append(20);
   V.Append(30);

   -- Insert at beginning
   V.Prepend(5);

   -- Print all elements (FIX: Use Index_Type for the loop)
   Put_Line("Vector elements:");
   for I in 1 .. Integer(Length(V)) loop  -- Convert Count_Type to Integer
      Put_Line(Integer'Image(Element(V, I)));  -- I is now an Integer
   end loop;

   -- Delete an element
   V.Delete(2);  -- Delete the second element (20)

   -- Print after deletion
   Put_Line("After deleting element 2:");
   for I in 1 .. Integer(Length(V)) loop
      Put_Line(Integer'Image(Element(V, I)));
   end loop;
end Vector_Example;
