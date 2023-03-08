class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :name
      t.integer :age
      t.string :caption
      t.string :image
      t.integer :rating

      t.timestamps
    end
  end
end
