defmodule Intro do
  #uppg1
  def smallest(num1,num2) when num1 < num2 , do: num1
  def smallest(_num1,num2), do: num2

  #uppg2
  def largestE(num1,num2) when num1 > num2, do: num1
  def largestE(_num1,num2), do: num2

  def largestE(num1,num2,num3) do
    if num3 > largestE(num1,num2) do
      num3
    else
      largestE(num1,num2)
    end
  end

  #uppg3
  def smallest(num1,num2,num3,num4) do
    if smallest(num1, num2) < smallest(num3,num4) do
      smallest(num1,num2)
    else
      smallest(num3,num4)
    end
  end

  #uppg4
  def ticketPrice(age) do
    if age < 64 do
      if age < 18 do
        10
      else
        20
      end
    else
      15
    end
  end

  #uppg5
  def next(n), do: n+1

  #uppg6
  def factoral(n) do
    if(n != 1) do
      factoral(n-1) * n
    else
      n*1
    end
  end

  #uppg7
  def fibonacci(n) do
    if n <= 1 do
      if n == 0 do
        0
      else
        0
      end
    else
      fibonacci(0,1,n)
    end
  end

  def fibonacci(f1,f2,n) do
    if n != 2 do
      fibonacci(f2,f1+f2,n-1)
    else
      f2
    end
  end

  #uppg8
  def isEmpty(l) when l == [], do: true
  def isEmpty(_l), do: false

  #uppg9
  def firstOf([head | _tail]), do: head

  #uppg10
  def lastOf(l) do
    if l != [hd(l)] do
      lastOf(tl(l))
    else
      hd(l)
    end
  end

  #uppg11
  def prepend(int,l), do: [int|l]

  #uppg12
  def reverse(cont,fill) do
    if cont != [] do
      reverse(tl(cont), prepend(hd(cont),fill))
    else
      fill
    end
  end

  def append(int,l) do
    reverse(prepend(int,reverse(l,[])),[])
  end

  #uppg13
  def len(l) do
    count(1,l)
  end

  def count(n,l) do
    if l != [] do
      if tl(l) != [] do
        count(n+1,tl(l))
      else
        n
      end
    else
      0
    end
  end

  #uppg14
  def sum(l) do
    countV(0,l)
  end

  def countV(n,[head|tail]) do
    if tail != [] do
      countV(n + head,tail)
    else
      n + head
    end
  end

  #uppg15

  def average(l), do: sum(l)/len(l)

  #uppg16
  def concat(l1,l2) do
    if l2 != [] do
      concat(append(hd(l2),l1),tl(l2))
    else
      l1
    end
  end

  #uppg17
  def startsWith(gues,l) do
    if gues == hd(String.graphemes(l)) do
      true
    else
      false
    end
  end

  #uppg18
  def lastChar(gues,l) do
    if gues == lastOf(String.graphemes(l)) do
      true
    else
      false
    end
  end

  #uppg19
  def chop(str) do
    chopper(String.graphemes(str),[])
  end

  def chopper(str,fill) do
    if tl(str) != ["/","n"] do
      if tl(str) != [] do
        chopper(tl(str),append(hd(str),fill))
      else
        to_string(append(hd(str),fill))
      end
    else
      to_string(append(hd(str),fill))
    end
  end

  #uppg20
  def indexOf(chr,str) do
    indexer(chr,0,String.graphemes(str))
  end

  def indexer(chr,n,[head|tail]) do
    if head != chr do
      indexer(chr,n+1,tail)
    else
      n+1
    end
  end

  #uppg21
  def countString(chr,str) do
    counterS(0,chr,String.graphemes(str))
  end

  def counterS(i,chr,l) do
    if l != [] do
      if hd(l) != chr do
        counterS(i,chr,tl(l))
      else
        counterS(i+1,chr,tl(l))
      end
    else
      i
    end
  end

  #uppg22
  def countList(num,l), do: counterS(0,num,l)

  #uppg23
  def containsS(i,l) do
    if countString(i,l) != 0 do
      true
    else
      false
    end
  end

  #uppg24
  def containsL(i,l) do
    if countList(i,l) != 0 do
      true
    else
      false
    end
  end

  #uppg25
  def remove(l1,l2) do
    Enum.join(remover(String.graphemes(l1),String.graphemes(l2),[],[]),"")
  end
  def remover(l1,l2,che,sol) do
    if l1 != [] do
      if len(che) != len(l2) do
        remover(tl(l1), l2, append(hd(l1),che), sol)
      else
        if che != l2 do
          remover(tl(l1), l2, tl(append(hd(l1),che)), append(hd(che),sol))
        else
          remover(l1, l2, [], sol)
        end
      end
    else
      if che != l2 do
        concat(sol,che)
      else
        sol
      end
    end
  end

  #uppg26
  def replace(l1,l2,l3) do
    Enum.join(replacer(String.graphemes(l1),String.graphemes(l2),String.graphemes(l3),[],[]),"")
  end

  def replacer(l1,l2,l3,che,sol) do
    if l1 != [] do
      if len(che) != len(l2) do
        replacer(tl(l1), l2, l3, append(hd(l1),che), sol)
      else
        if che != l2 do
          replacer(tl(l1), l2, l3, tl(append(hd(l1),che)), append(hd(che),sol))
        else
          replacer(l1, l2, l3, [], concat(sol,l3))
        end
      end
    else
      if che != l2 do
        concat(sol,che)
      else
        concat(sol,l3)
      end
    end
  end

  #uppg27
  def splitt(str,dvdr) do
    splitter(String.graphemes(str), dvdr, [], [])
  end

  def splitter(l,dvdr,hld,sol) do
    if l != [] do
      if hd(l) != dvdr do
        splitter(tl(l), dvdr, append(hd(l),hld), sol)
      else
        splitter(tl(l), dvdr, [], concat(sol,[Enum.join(hld)]))
      end
    else
      concat(sol,[Enum.join(hld)])
    end
  end

  #uppg28
  def rovarize(str) do
    replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(str,"z","zoz"),"x","xox"),"w","wow"),"v","vov"),"t","tot"),"s","sos"),"r","ror"),"q","qoq"),"p","pop"),"n","non"),"m","mom"),"l","lol"),"k","kok"),"j","joj"),"h","hoh"),"g","gog"),"f","fof"),"d","dod"),"c","coc"),"b","bob")
  end

  #uppg29
  def unrovarize(str) do
    replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(str,"zoz","z"),"xox","x"),"wow","w"),"vov","v"),"tot","t"),"sos","s"),"ror","r"),"qoq","q"),"pop","p"),"non","n"),"mom","m"),"lol","l"),"kok","k"),"joj","j"),"hoh","h"),"gog","g"),"fof","f"),"dod","d"),"coc","c"),"bob","b")
  end

end
