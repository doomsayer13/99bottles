class Bottles
  def verse(number)
    case number
    when 0 then no_more_verse
    when 1 then last_verse
    else
      default_verse(number)
    end
  end

  def verses(from, to)
    from.downto(to).map { |verse_number| verse(verse_number) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def no_more_verse
    "No more bottles of beer on the wall, " +
    "no more bottles of beer.\n" +
    "Go to the store and buy some more, " +
    "99 bottles of beer on the wall.\n"
  end

  def last_verse
    "1 bottle of beer on the wall, " +
    "1 bottle of beer.\n" +
    "Take it down and pass it around, " +
    "no more bottles of beer on the wall.\n"
  end

  def default_verse(n)
    "#{n} bottles of beer on the wall, " +
    "#{n} bottles of beer.\n" +
    "Take one down and pass it around, " +
    "#{n-1} #{container(n-1)} of beer on the wall.\n"
  end

  # six-pack is still missing from the code
  def container(n)
    if n == 1
      "bottle"
    else
      "bottles"
    end
  end
end
