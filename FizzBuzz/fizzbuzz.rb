class Fizzbuzz

  def comprobacion(num)
    if num % 3 == 0 and num % 5 == 0
      return 'Fizzbuzz'
    elsif num % 5 == 0
      return 'Buzz'
    elsif num % 3 == 0
      return 'Fizz'
    else
      return ''
    end
  end

end
