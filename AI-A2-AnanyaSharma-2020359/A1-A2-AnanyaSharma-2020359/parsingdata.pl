
parse :- csv_read_file('roaddistance.csv', Rows, [functor(distance), arity(21)]), table_entry(Rows, Row).

header_row_entry(Header,Row,Entry):-
    arg(1, Row, RowName),
    functor(Header, _, Arity),
    between(2,Arity,ArgIndex),
    arg(ArgIndex, Header, ColumnName),
    arg(ArgIndex, Row, Value),
    Entry = distance(RowName, ColumnName, Value),
    append_on_file('parseData.pl', Entry).
   %  writeln(Entry).

table_entry(Entries, Entry):-
    Entries = [Header | Rows],
    member(Row, Rows),
    header_row_entry(Header, Row, Entry).

write_on_file(File, To_city):-
   open(File, write, Stream),
   write(Stream, goal(To_city)), write(Stream,'.\n'),
   close(Stream).

append_on_file(File, Fact):-
   open(File, append , Stream),
   write(Stream, Fact), write(Stream,'.\n'),
   close(Stream).

   