module Factorial

  def factorial
    number = self
    number == 0 ? 1 : number * (number-1).factorial
  end
end

class Fixnum
  include Factorial
end
