module GamesHelper
  def render_piece(x, y)
    location = locate_piece(x, y)
    piece_name = "#{location.color}#{location.type}.png" if location.present?
    image_tag(piece_name, class: 'piece-image')
  end

  def locate_piece(x, y)
    @game.pieces.where(horizontal_position: x, vertical_position: y).first
  end
end
