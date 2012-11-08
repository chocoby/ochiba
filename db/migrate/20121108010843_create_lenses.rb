class CreateLenses < ActiveRecord::Migration
  def change
    create_table :lenses do |t|
      t.references :manufacturer
      t.string :name, null: false, limit: 200

      t.timestamps
    end
    add_foreign_key :lenses, :manufacturers
  end
end
