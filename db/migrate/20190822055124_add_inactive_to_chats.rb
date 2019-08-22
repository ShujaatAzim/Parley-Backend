class AddInactiveToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :inactive, :boolean, default: false
  end
end
