module Phaser
  class Sprite
    def initialize(game, x, y, key, frame)
      @game = game.to_n
      @native = `new Phaser.Sprite(#{@game}, x, y, key, frame)`
    end

    alias_native :anchor,        :anchor
    alias_native :events,        :events
    
    def body
      Native(`#@native.body`)
    end
    
    def input_enable=
      `self["native"].inputEnabled`
    end
    
    def scale
      Native(`#@native.scale`)
    end
    
    def animations
      @animations ||= AnimationManager.new(self)
    end
  end
end