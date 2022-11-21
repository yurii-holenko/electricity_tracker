class AddCoordinatesToLocation < ActiveRecord::Migration[7.0]
  def change
    add_column(:locations, :coordinates, :st_point, geographic: true, null: true)
  end
end
