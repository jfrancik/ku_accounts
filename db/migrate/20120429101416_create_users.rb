class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :k_number
      t.string :first_name
      t.string :last_name
      t.string :password
      t.integer :privilege
      t.string :key
      t.boolean :ver
      t.string :salt
      t.boolean :passwd_reset

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
