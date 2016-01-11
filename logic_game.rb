# require '../logic_gate/and'
module And

class Double
attr_accessor :a, :b

  def initialize(a = 0, b = 0)
    @a = a
    @b = b
  end

  def input_a
    @a
  end

  def input_b
    @b
  end

  def output
    if input_a == 1
      if input_b == 1
        1
      else
        0
      end
    end
  end

end

class Triple < Double
  attr_accessor :c

  def initialize(a =0 , b = 0, c = 0 )
    @a = a
    @b = b
    @c = c
  end

  def input_c
    @c
  end

  def output
    if input_a == 1
      if input_b == 1
        if input_c == 1
        1
      else
        0
      end
      end
    end
  end

  end

end
