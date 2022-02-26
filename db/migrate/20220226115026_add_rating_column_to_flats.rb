class AddRatingColumnToFlats < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :rating, :string
  end
end
