class RenameColumnsInVisits < ActiveRecord::Migration[6.1]
  def change
    rename_column :visits, :pat_id, :patient_id
    rename_column :visits, :doc_id, :doctor_id
  end
end
