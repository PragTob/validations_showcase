class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.date :date
      t.datetime :crew_arrives_at
      t.datetime :performers_arrive_at
      t.datetime :open_at
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end
