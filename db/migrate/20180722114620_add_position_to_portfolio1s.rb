class AddPositionToPortfolio1s < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolio1s, :position, :integer
  end
end
