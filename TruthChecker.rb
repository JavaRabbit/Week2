class TruthChecker

  def initialize
    @last_check = false
  end

  def check(thing)

      @last_check = if thing
                      true
                    else
                      false
                    end
  end

  def last_truth
    @last_check
  end

end
