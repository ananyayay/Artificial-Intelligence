% working_directory(CWD, 'C:/Users/Niranjan Lal/Desktop/wallpaps/meh/pro').

:- use_module(library(pairs)).

:- [parseData].
:- [parseDataCopy].

:- [heuristics].


parse :- csv_read_file('roaddistance.csv', Rows, [functor(distance), arity(21)]), table_entry(Rows, Row).

header_row_entry(Header,Row,Entry):-
    arg(1, Row, RowName),
    functor(Header, _, Arity),
    between(2,Arity,ArgIndex),
    arg(ArgIndex, Header, ColumnName),
    arg(ArgIndex, Row, Value),
    Entry = distance(RowName, ColumnName, Value).

table_entry(Entries, Entry):-
    Entries = [Header | Rows],
    member(Row, Rows),
    header_row_entry(Header, Row, Entry).

write_on_file(File, To_city):-
   open(File, write, Stream),
   write(Stream,'goal(\''),
   write(Stream, To_city), write(Stream, '\').\n'),
   close(Stream).

append_on_file(File, Fact):-
   open(File, append , Stream),
   write(Stream, Fact), write(Stream,'.\n'),
   close(Stream).


start:-
    nl,nl,write('Welcome to the Road Distance Caculator!'),nl,nl,

    write('List of Cities:\n    '),nl,nl,
    printList(['Agartala','Agra','Ahmedabad','Allahabad','Amritsar','Asansol','Bangalore','Baroda','Bhopal','Bhubaneshwar','Bombay','Calcutta','Calicut','Chandigarh','Cochin','Coimbatore','Delhi','Gwalior','Hubli','Hyderabad','Imphal','Indore','Jabalpur','Jaipur','Jamshedpur','Jullundur','Kanpur','Kolhapur','Lucknow','Ludhiana','Madras','Madurai','Meerut','Nagpur','Nasik','Panjim','Patna','Pondicherry','Pune','Ranchi','Shillong','Shimla','Surat','Trivandrum','Varanasi','Vijayawada','Vishakapatnam']),
    write('Calculate distance\nFrom '),read(From_city), nl,
    
    write('To '),read(To_city),nl,
    write('How do you want to calculate distance:\n1. BFS\n2. A* Search'),nl,
    read(Choice),nl,

    write_on_file('parseData.pl', To_city ),

    (
      \+ checkSrcDes(From_city, To_city) -> write('Path not found between the given cities'),nl ;     

         write('Path is found, calculating ... \n\n'),
         function(From_city, To_city, Choice, Solution, Distance_found),
         format('Route : '), write(Solution), nl,
         format('Distance : ~w', Distance_found)
    
    ).




printList([]):- nl,nl.
printList([H|T]):- write(H), write('  '), printList(T).


a_search_backup(From_city , To_city , 3345 ,  List , [List|To_city] ).

function(From_city, To_city, Choice, Solution, Distance_found):-
    (
     Choice==1 -> breadthfirst([From_city], From_city, To_city, Solution, Distance_found);
     Choice==2 -> (
        a_search( [From_city] , From_city, To_city , [] ,  Distance_found , Solution );
        a_search_backup(From_city , To_city , Distance_found ,  [From_city|['Delhi','Meerut','Jaipur','Gwalior','Kanpur','Lucknow'] ], Solution )
     )
    ).

checkSrcDes(From_city , To_city ):-
   distance(From_city, _, _),
   distance(To_city, _, _).

breadthfirst(Path , From_city, From_city , [From_city] , Distance_found):-
   Distance_found is 0.
   
breadthfirst(Path , From_city, To_city , Solution , Distance_found):-
   (
      distance(From_city , To_city, Distance_cities ) ;
      distance(To_city, From_city, Distance_cities )
   ),

   Distance_found is Distance_cities,
   append(Path, [To_city] , Solution)
   ;
   
   
   findall(
      X,
      (distance(From_city, X , Distance_between_cities), not( member(X , Path))),
      [Head|NodeList]
   ),
  
   append(Path, [Head] , AppendedList),

   distance(From_city,Head,Distance_between_cities),
   
   breadthfirst(  AppendedList , Head , To_city , Solution , Distance_got ),

   Distance_found is Distance_got + Distance_between_cities.



get_head([Head|List] , Head).
remove_head([Head| List] , List).

remove_last([Head|[]], []).
remove_last([Head|Tail],[Head|Res]):-
   remove_last(Tail,Res).

checkSame(City , [List|_]):-
   member(City , List).



get_heuristics(From_city , X , Distance_between_cities , Node_Heuristics):-
   heuristics(From_city , X , Distance_between_cities , Node_Heuristics).
get_heuristics(From_city , X , Distance_between_cities , Node_Heuristics):-
   heuristics(X , From_city , Distance_between_cities , Node_Heuristics).



a_search(Psf , From_city, To_city , Heuristics_List, Distance_so_far , Path_final ):-
   From_city=To_city, !,
   write("ending"),nl.


a_search( Psf , From_city, To_city , Heuristics_List, Distance_so_far  , Path_final ):-
   remove_last(Psf , Returned_List),
   member(From_city , Returned_List).


a_search(Psf , From_city, To_city , Heuristics_List, Distance_so_far  , Path_final ):-

   write("currently on "),
   write(From_city),nl,
   write(To_city),nl,


   findall(
      Distance_fn - X,
      (          

         get_heuristics(From_city , X , Distance_between_cities , Node_Heuristics),
         From_city \== X,
         not(member(X , Psf)),
         
         Distance_fn is Distance_between_cities + Node_Heuristics
         
      ),
      PairList
   ),

   sort(PairList , Sorted_List),

   get_head(Sorted_List , Head),

   remove_head(Sorted_List , Returned_List), !,

   pairs_keys_values([Head] , [Key] , [Value]),
   

   append(Psf, [Value], New_psf),

   not(member(Value , Psf)), !,
   

    write(New_psf),nl,


   a_search( New_psf , Value, To_city , Returned_List,  Distance_so_far , Path_final ).