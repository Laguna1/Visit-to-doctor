class AddDocReferencesToVisits < ActiveRecord::Migration[6.1]
  def change
    add_reference :visits, :user, foreign_key: true
  end
end
