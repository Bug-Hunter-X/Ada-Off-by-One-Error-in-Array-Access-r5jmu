```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive_Index is Integer range 1..10;
   Index : Positive_Index;
begin
   for Index in My_Arr'Range loop
      -- Correct access to array element
      Put_Line(Integer'Image(My_Arr(Index)));
   end loop;
exception
   when others =>
      Put_Line("An unexpected error occurred.");
end Example;
```