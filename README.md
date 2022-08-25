# Elixir intro-övningar

Definera alla funktioner i modulen Intro (`lib/intro.ex`)

## Installation

`brew install elixir`


## Tester

Skapa tester för funktionerna i `test/intro_test.exs` **innan** du skriver funktionen.

Försök fundera på vilka input och/eller kombinationer av input som ska generera olika output.

Om det finns en inbyggd funktion som gör samma sak ska du *inte* använda den utan göra en egen. Syftet är att lära sig funktionell programmering, inte att lära sig elixirs standardbibliotek och API.

Det är däremot OK (och uppmuntras) att återanvända egna funktioner man använt tidigare i filen för att lösa senare uppgifter.

Exempeltest för första uppgiften:

```elixir
defmodule IntroTest do
  test "smallest of two when smallest is first" do
    assert Intro.smallest(1,2) == 1
  end

  test "smallest of two when smallest is last" do
    assert Intro.smallest(3,2) == 2
  end

  test "smallest of two of equal size" do
    assert Intro.smallest(1337,1337) == 1337
  end
end
```

Kör alla tester med `mix test`

För att manuellt testa dina funktioner med egna värden i iex, kör `iex -S mix` (observera stort "S"), och anropa sen dina tester med t.ex `Intro.smallest(3,2)`.

## Övningar

### 1. Smallest of Two

Givet två integers som input ska funktionen returnera det lägsta värdet.

Använd gärna guards

#### Länkar

* [Elixir School - Named Functions](https://elixirschool.com/en/lessons/basics/functions/#named-functions)
* [Elixir School - Basic Data Types](https://elixirschool.com/en/lessons/basics/basics/#basic-data-types)
* [Elixir School - Control Structures](https://elixirschool.com/en/lessons/basics/control-structures/)
* [Hexdocs - Guards](https://hexdocs.pm/elixir/guards.html)

### 2. Largest of three

Givet tre integers som input ska funktionen returnera det största värdet.

Använd gärna guards

### 3. Smallest of four

Givet fyra integers som Input ska funktionen returnera det lägsta värdet.

Tänk på att elixir har function overloading för funktioner av olika aritet.

* [Understanding Function Arity in Elixir](https://www.culttt.com/2016/05/02/understanding-function-arity-elixir)

### 4. TicketPrice

Givet en integer `age` som input ska funktionen returnera korrekt pris enligt listan nedan:

- Under 18: 10
- Från och med 18 till och med 64: 20
- Över 64: 15

### 5. Next Number

Tar ett heltal som input och ger nästa tal som output.

### 6. Factorial

Tar ett heltal n som input och returnerar n-fakultet.

[Wikipedia - Fakultet](https://sv.m.wikipedia.org/wiki/Fakultet_(matematik))

#### Exempel
1 -> 1
2 -> 2
3 -> 6
4 -> 24
5 -> 120
6 -> 720
8 -> 40320

#### Tips

Den här uppgiften kräver rekursion. Computerphile har några bra filmer som förklarar rekursion:

* [What on earth is recursion? - Computerphile](https://www.youtube.com/watch?v=Mv9NEXX1VHc)
* [Programming Loops vs Recursion - Computerphile](https://www.youtube.com/watch?v=HXNhEYqFo0o)

När man använder sig av rekursion är det viktigt att man har ett basfall, det vill säga ett fall som inte längre leder till ett rekursivt anrop.

Det är oftast bra att börja med att fundera ut basfallet, och lägga det överst bland funktionsdefinitionerna.

#### Länkar

* [Elixir School - Understanding Recursion with Elixir](https://elixirschool.com/blog/recursion/)
* [Elixir Lang - Getting  Started - Recursion](https://elixir-lang.org/getting-started/recursion.html)

### 7. Fibonacci

Tar en Integer "n" som input och returnerar det n:te Fibonaccitalet

Även denna uppgift kräver rekursion. Titta på [wikipediasidan](https://sv.wikipedia.org/wiki/Fibonaccital) och försök hitta basfallet.

### 8. Is Empty

Tar en `List` som input och returnerar true om den är tom, annars false

Lists i Elixir är är "Linked Lists". Computerphile har en video som beskriver Linked Lists.

Om det sista avsnittet om map i videon är förvirrande - hoppa över det så länge, det kommer bli tydligare när du blir van vid rekursion och anonyma funktioner.
* [Linked Lists - Computerphile](https://www.youtube.com/watch?v=_jQhALI4ujg)

I videon säger han dock att "the tail of the list is the last element", men när man pratar om "tail" i Elixir avser man *alla* element som inte är det första elementet i den del av listan som är kvar.

#### Länkar

* [ElixirSchool - Collections - Lists](https://elixirschool.com/en/lessons/basics/collections/#lists)
* [HexDocs - List ](https://hexdocs.pm/elixir/master/List.html)

### 9. First of

Tar en List som input och returnerar det första elementet.

* [ElixirSchool - Collections - Lists](https://elixirschool.com/en/lessons/basics/collections/#lists)
* [HexDocs - List ](https://hexdocs.pm/elixir/master/List.html)

### 10. Last of

Tar en List som input och returnerar sista elementet.

Den här funktionen kräver rekursion. Fundera på hur basfallet ser ut - hur vet du att du kommit till den sista platsen i listan?

* [A tender introduction to Elixir recursion](https://medium.com/@dlite/your-first-elixir-recursive-function-c2309d091bc6)

### 11. Prepend

Tar en List och en Integer som input och returnerar en List bestående av integern och listan (med integern på första plats).

Försök använda cons-operatorn (`|`)

#### Länkar


### 12. Append

Tar en List och en Integer som input och returnerar en List bestående av integern och listan (med integern på sista plats).

Yay! Mer rekursion!

Försök använda cons-operatorn (`|`)

### 13. Length

Tar en List som input och returnerar längden (antalet element) på listan.

Re-re-recursion!

### 14. Sum

Tar en List med Integers som input och returnerar summan av alla talen.

Whee, rekursion!

### 15. Average

Tar en List med Integers som input och returnerar medelvärdet av alla talen.
Whee, rekursion!

### 16. Concat

Tar två Listor som input och returnerar en ny List, där båda arrayerna konkateneras (sätts ihop).

Använd cons-operatorn (`|`) och rekursion (inte `++`).

### 17. Starts With

Tar en sträng och ett tecken som input och returnerar true/false beroende på om strängen börjar med tecknet eller ej.

#### Tips

Omvandla strängen till en lista av tecken med hjälp av [`String.graphemes`](https://hexdocs.pm/elixir/1.12/String.html#graphemes/1) 

### 18. Ends With

Tar en sträng och ett tecken som input och returnerar true/false beroende på om strängen slutar med tecknet eller ej.

### 19. Chomp

Tar en sträng som input och returnerar en sträng där en eventuell radbrytning ("\n") tagits bort från slutet.

### 20. Index Of

Tar en sträng och ett tecken som input och returnerar tecknets position om det finns, annars nil.

### 21. Count (String)

Tar en sträng och ett tecken som input och returnerar antalet förekomster av tecknet i strängen

### 22. Count (List)

Tar en Lista och ett nummer som input och returnerar antalet förekomster av numret i listan.

### 23. Contains (String)

Tar en sträng och ett tecken som input och returnerar true/false om tecknet finns i strängen eller ej.
### 24. Contains (List)

Tar en list och ett värde och returnerar true/false beroende på om värdet finns i listan eller ej

### 25. Remove (String)

Tar två strängar som input och returnerar ny sträng där alla förekomster av sträng2 i sträng1 är borttagna.

### 26. Replace (String)

Tar tre strängar som input och returnerar en ny sträng där alla förekomster av sträng2 i sträng1 är ersatta med sträng3

### 27. Split (String)

Tar en sträng och ett tecken som input och returnerar en List, där elementen i listan är alla delar av strängen som är avskiljda med tecknet

#### Exempel
* `split("1;2;3;4;5", ";") #=> ["1", "2", "3", "4", "5"]`
* `split("Hello World", " ") #=> ["Hello", "World"]`
* `split("This is a line\nthis is another line\nthis is a line too", "\n") #=> ["This is a line", "this is another line", "this is a line too"]`

### 28. Rovarize 

Tar en sträng och omvandlar strängen från svenska till rövarspråket.

#### Exempel

* `rovarize("Bajsar björnar i skogen?") #=> "Bobajojsosaror bobjojörornonaror i soskokogogenon"`

#### Länkar

* [Rövarspråket - Wikipedia](https://sv.wikipedia.org/wiki/R%C3%B6varspr%C3%A5ket)

### 29. Derovarize

Tar en sträng och omvandlar strängen från rövarspråket till svenska.

#### Exempel
* `derovarize("Tothohisos a bobitot hoharordoderor") #=> 'This is a bit harder'`
* `derovarize("Bobajojsosaror bobjojörornonaror i soskokogogenon"') #=> 'Bajsar björnar i skogen?'`
