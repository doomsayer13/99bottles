class Bottles
# A Ruby beepitett "join" methodja tombokhoz, kivaltotta azt a bonyolult logikat amit
# felepitettem, ahhoz hogy az elemeken vegigfutva osszefonjam oket es hogy az utolso
# elemen kivul mindegyikhez fuzzek egy uj sor karaktert.
# Jelentosen egyszerusodott a verses method.

# A verse method-ban levo stringeket a jobb atlathatosag miatt kiemeltem private methodokba
# melyek nevebol eredoen lathatjuk majd hogy melyik mit csinal
# a verse method is olvashatobb lett.

  def verse(number)
    case number
    when 0
      last_verse
    when 1
      first_verse
    when 2
      second_verse
    else
      nth_verse(number)
    end
  end

  def verses(from, to)
    from.downto(to).map do |number|
      verse(number)
    end.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def last_verse
    <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
VERSE
  end

  def first_verse
    <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
VERSE
  end

  def second_verse
    <<-VERSE
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
VERSE
  end

  def nth_verse(n)
    <<-VERSE
#{n} bottles of beer on the wall, #{n} bottles of beer.
Take one down and pass it around, #{n - 1} bottles of beer on the wall.
VERSE
  end
end
