class CreateLenses < ActiveRecord::Migration
  def change
    create_table :lenses do |t|
      t.references :manufacturer
      t.string :name

      t.timestamps
    end
    add_index :lenses, :manufacturer_id
  end
end
