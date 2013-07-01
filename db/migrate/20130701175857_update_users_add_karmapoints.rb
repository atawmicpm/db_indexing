class UpdateUsersAddKarmapoints < ActiveRecord::Migration
  def change
    add_column :users, :total_karma, :integer, default: 0
  end
end
