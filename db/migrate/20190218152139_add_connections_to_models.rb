class AddConnectionsToModels < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :practice, foreign_key: true
    add_reference :doctors, :practice, foreign_key: true
    add_reference :appointments, :doctor, foreign_key: true
    add_reference :appointments, :patient, foreign_key: true
  end
end
