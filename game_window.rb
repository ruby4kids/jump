class GameWindow < Gosu::Window
  
  def initialize
    super(800,600,0)
    @player = Player.new(self)
  end
  
  def update
    if button_down? Gosu::Button::KbSpace
      @player.jump
    end
    
    @player.update
  end
  
  def draw
    @player.draw
  end
  
  
end
