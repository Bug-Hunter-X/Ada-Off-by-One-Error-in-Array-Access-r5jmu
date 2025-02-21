```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive_Index is Integer range 1..10;
   Index : Positive_Index;
begin
   for Index in My_Arr'Range loop
      -- Incorrect access to array element due to off-by-one error 
      -- Should be My_Arr(Index) 
      Put_Line(Integer'Image(My_Arr(Index + 1)));
   end loop;
exception
   when Constraint_Error =>
      Put_Line("Error: Index out of bounds");
end Example;
```