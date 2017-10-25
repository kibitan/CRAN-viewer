class CreatePackages < ActiveRecord::Migration[5.1]
  def change
    create_table :packages do |t|
      t.string :name,     null: false, index: true
      t.string :version,  null: false
      t.json   :raw_data, null: false

      t.timestamps
    end

    add_index :packages, [:name, :version], unique: true
  end
end
