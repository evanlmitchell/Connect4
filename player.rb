
class Player
  attr_reader :piece

  def initialize(args = {})
    @piece = args[:piece]
  end
end
