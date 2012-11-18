class AddLensIdToLenses < ActiveRecord::Migration
  def change
    add_column :lenses, :lens_id, :string, limit: 50, after: :manufacturer_id
    add_index :lenses, :lens_id
  end
end
