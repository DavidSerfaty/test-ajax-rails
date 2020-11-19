class AddCheckToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :check, :boolean, default: false
  end
end
