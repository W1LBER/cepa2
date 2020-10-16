class CreateWinemakers < ActiveRecord::Migration[5.2]
  def change
    create_table :winemakers do |t|
      t.string :name
      t.integer :age
      t.string :country
      t.references :position, foreign_key: true
      t.references :magazine, foreign_key: true

      t.timestamps
    end
  end
end
