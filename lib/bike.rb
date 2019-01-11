
class Bike

  attr_accessor :functional

  def initialize(functional = true)
    @functional = functional
  end

  def working?
    @functional
  end

end
