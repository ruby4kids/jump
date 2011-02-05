module Movement
  
  def move
    if @game_window.button_down? Gosu::Button::KbLeft
      move_left
    end
    if @game_window.button_down? Gosu::Button::KbRight
      move_right
    end
    if @game_window.button_down? Gosu::Button::KbDown
      move_down
    end
    if @game_window.button_down? Gosu::Button::KbUp
      move_up
    end
  end
  
  def move_left
    if @x < 0 
      @x = 0
    else
      @x = @x - 10
    end
  end

  def move_right
    if @x > (@game_window.width - @icon.width)
      @x = @game_window.width - @icon.width
    else
      @x = @x + 10
    end
  end

  def move_up
    if @y < 0 
      @y = 0
    else
      @y = @y - 10
    end
  end

  def move_down
    if @y >(@game_window.height - @icon.height)
      @y = @game_window.height - @icon.height
    else
      @y = @y + 10
    end
  end
  
end
