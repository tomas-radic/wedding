class AddAttrs1ToInvitations < ActiveRecord::Migration[7.0]
  def change
    add_column :invitations, :nr_persons, :integer, null: false, default: 1
    add_column :invitations, :with_children, :boolean, null: false, default: false
    add_column :invitations, :note, :string
  end
end
