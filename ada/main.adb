with Ada.Text_IO, Ada.Integer_Text_IO;

procedure Main is
begin
   declare 
      function Fibonacci (N: Integer) return Integer is
      begin
         if N=1 or N=2 then
            return 1;
         else 
            return Fibonacci(N-1) + Fibonacci(N-2);
         end if;
      end Fibonacci;
   begin
      Ada.Integer_Text_IO.Put(Item => Fibonacci(40));
   end;
end Main;

