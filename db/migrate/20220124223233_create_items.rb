class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :type
      t.string :claybody
      t.string :glaze

      t.timestamps
    end
  end
end
