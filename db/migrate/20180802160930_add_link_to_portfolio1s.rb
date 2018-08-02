class AddLinkToPortfolio1s < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolio1s, :name, :string
  end
end
