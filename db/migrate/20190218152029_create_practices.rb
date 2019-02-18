class CreatePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :practices do |t|
      t.string :name
      t.datetime :opens_at
      t.datetime :closes_at

      t.timestamps
    end
  end
end
