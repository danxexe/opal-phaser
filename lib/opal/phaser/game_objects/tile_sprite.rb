class TileSprite
  include Native
  
  alias_native :auto_scroll, :autoScroll
  alias_native :stop_scroll, :stopScroll
  alias_native :destroy
  
  alias_native :body
end