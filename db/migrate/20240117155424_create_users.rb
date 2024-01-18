class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :email, null: false, default: ''
      t.boolean :is_admin, null: false, default: false

      t.timestamps
    end
  end
end
