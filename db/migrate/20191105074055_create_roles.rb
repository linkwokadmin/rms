class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.references :user, null: false, foreign_key: true
      t.references :role_master, null: false, foreign_key: true

      t.timestamps
    end
  end
end
