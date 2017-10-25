class CreateDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :descriptions do |t|
      t.references :package,          null: false, foreign_key: true
      t.string     :package_url,      null: false
      t.datetime   :date_publication, null: false
      t.string     :title,            null: false
      t.text       :description,      null: false
      t.string     :raw_data,         null: false

      t.timestamps
    end

    # MEMO: migrate type `references` also make index, remove it then add unique index
    remove_index :descriptions, :package_id
    add_index :descriptions, :package_id, unique: true
    add_index :descriptions, :package_url, unique: true
  end
end
