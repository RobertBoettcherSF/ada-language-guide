-- File: math_utils.adb
package body Math_Utils is
   function Add(X, Y: Integer) return Integer is
   begin
      return X + Y;
   end Add;
   
   function Subtract(X, Y: Integer) return Integer is
   begin
      return X - Y;
   end Subtract;
end Math_Utils;
