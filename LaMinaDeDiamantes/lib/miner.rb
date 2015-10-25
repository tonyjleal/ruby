class Miner


  def extract(diamonds)

    return 0 if diamonds.empty?

    possible_diamond = total = 0

    diamonds.each_char do |elem|
      if elem.eql?('<')
        possible_diamond += 1
      elsif elem.eql?('>')
        if possible_diamond > 0
          total += 1
          possible_diamond -= 1
        end
      end
    end

    return total
  end

end
