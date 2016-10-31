module And
  class Double
    attr_accessor :input_a,
                  :input_b
    
    def initialize
      self.input_a = self.input_b = 0
    end

    def output
      flag = 1
      if input_a == 0
        return 0
      end

      if input_b == 0
        return 0
      end
      flag
    end
  end

class Triple
  attr_accessor :input_a,
                :input_b,
                :input_c
    
    def initialize
      self.input_a = self.input_b = self.input_c = 0
    end

    def output
      flag = 1
      if input_a == 0
        return 0
      end

      if input_b == 0
        return 0
      end

      if input_c == 0
        return 0
      end
      flag
    end
end
end