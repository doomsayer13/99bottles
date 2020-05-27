class Bottles

    def verse(number)
        case number
        when 0
           return <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
VERSE
        when 1
            return <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
VERSE
        when 2
            return <<-VERSE
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
VERSE
        else
            return <<-VERSE
#{number} bottles of beer on the wall, #{number} bottles of beer.
Take one down and pass it around, #{number - 1} bottles of beer on the wall.
VERSE
        end
    end

    def verses(start_verse, end_verse)
        range = (start_verse).downto(end_verse)
        verses = ""
        range.each_with_index do |number, index|
            if index == range.size - 1
                verses += verse(number)
            else
                verses += verse(number) + "\n"
            end
        end

        return verses
    end

    def song
        verses(99, 0)
    end
end
