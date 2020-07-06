with Ada.Text_IO;
use Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;


procedure Factorial is

N: Integer;

function Factorial(N: Integer) return Integer is
   begin

    if N<2 then return 1;
    else return (N*Factorial(N-1));

    end if;
   end Factorial;

begin
   
   Put("Ingrese el numero a calcular el factorial:");
   Get(N);
   New_Line;
   Put("El factorial es:");
   Put(Factorial(N));



end Factorial;