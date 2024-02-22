program NegativeEvenNumbers;

var
  A: array[1..30] of integer;
  B: array[1..30] of integer;
  i, j: integer;

begin
  // Ввод чисел
  writeln('Введите 30 чисел:');
  for i := 1 to 30 do
    readln(A[i]);

  // Поиск отрицательных четных чисел
  j := 1;
  for i := 1 to 30 do
  begin
    if (A[i] mod 2 = 0) and (A[i] < 0) then
    begin
      B[j] := A[i];
      j := j + 1;
    end;
  end;

  // Заполнение остатка массива В нулями
  for i := j to 30 do
    B[i] := 0;

  // Вывод исходной последовательности и массива В
  writeln('Исходная последовательность:');
  for i := 1 to 30 do
    write(A[i], ' ');
  writeln;
  
  writeln('Массив отрицательных четных чисел:');
  for i := 1 to 30 do
    write(B[i], ' ');
  writeln;
end.