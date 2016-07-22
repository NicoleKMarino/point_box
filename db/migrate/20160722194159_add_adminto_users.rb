class AddAdmintoUsers < ActiveRecord::Migration
  def change
    add_reference :users, :admin, index: true
  end
end
