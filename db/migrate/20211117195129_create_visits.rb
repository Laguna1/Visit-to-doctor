class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.datetime :date
      t.string :notes

      t.timestamps
    end
  end
end
