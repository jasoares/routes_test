class AddUserBdate < ActiveRecord::Migration
  def up
    add_column :users, :bdate, :date
  end

  def down
    remove_column :users, :bdate
  end
end
