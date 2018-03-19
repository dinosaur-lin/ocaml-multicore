let rec f x =
  if not (x = 0 || x = 10000 || x = 20000)
  then 1 + f (x + 1)
  else
    try
      1 + f (x + 1)
    with Stack_overflow ->
      print_string "x = "; print_int x; print_newline();
      raise Stack_overflow

let _ =
  try
    ignore(f 0)
  with Stack_overflow ->
    print_string "Stack overflow caught"; print_newline()

let rec sum n = if n = 0 then 0 else n + sum (n-1)

let _ = 
  print_string "sum(1..100000) = ";
  print_int (sum 100000);
  print_newline()
