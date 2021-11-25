class ChangeVisitUserToDocId < ActiveRecord::Migration[6.1]
  def change
    rename_column :visits, :user_id, :doc_id
  end
end
