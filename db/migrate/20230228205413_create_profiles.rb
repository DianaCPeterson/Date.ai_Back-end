class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :image
      t.string :name
      t.string :caption
      

      t.timestamps
    end
  end
end
