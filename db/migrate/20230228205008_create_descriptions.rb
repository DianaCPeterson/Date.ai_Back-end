class CreateDescriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :descriptions do |t|
      t.string :about_me
      t.string :looking_for
      t.belongs_to :profile
      t.belongs_to :match

      t.timestamps
    end
  end
end
