class AddEmailToInvitations < ActiveRecord::Migration[7.0]
  def change
    add_column :invitations, :email, :string
  end
end
