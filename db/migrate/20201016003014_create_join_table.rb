class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :wines, :cepas do |t|
      # t.index [:wine_id, :cepa_id]
      # t.index [:cepa_id, :wine_id]
    end
  end
end
