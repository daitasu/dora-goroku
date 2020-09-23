class AddColumnPublicUidToQuotes < ActiveRecord::Migration[6.0]
  def change
    add_column :quotes, :public_uid, :string
    add_index :quotes, :public_uid, unique: true
  end
end
