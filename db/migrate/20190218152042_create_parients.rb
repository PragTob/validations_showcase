class CreateParients < ActiveRecord::Migration[5.2]
  def change
    create_table :parients do |t|
      t.string :name

      t.timestamps
    end
  end
end
