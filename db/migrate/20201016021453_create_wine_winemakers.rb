class CreateWineWinemakers < ActiveRecord::Migration[5.2]
  def change
    create_table :wine_winemakers do |t|
      t.references :winemaker, foreign_key: true
      t.references :wine, foreign_key: true

      t.timestamps
    end
  end
end
