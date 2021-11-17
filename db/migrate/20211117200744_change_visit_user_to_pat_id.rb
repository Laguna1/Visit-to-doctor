class ChangeVisitUserToPatId < ActiveRecord::Migration[6.1]
  def change
    rename_column :visits, :user_id, :pat_id
  end
end
