class ChangeContactsContentLimit140 < ActiveRecord::Migration[5.2]
  def up
    change_column :contacts, :content, :text, limit: 140
  end
  def down
    change_column :contacts, :content, :text
  end
end
