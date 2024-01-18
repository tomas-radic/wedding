class CreateInvitations < ActiveRecord::Migration[7.0]
  def change
    create_table :invitations, id: :uuid do |t|
      t.string :name, null: false
      t.boolean :accepted, null: false, default: false
      t.boolean :overnight, null: false, default: false

      t.timestamps
    end
  end
end
