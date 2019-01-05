class CreateLoopBs < ActiveRecord::Migration[5.2]
  def change
    create_table :loop_bs do |t|
      t.belongs_to :loop_a, index: true

      t.timestamps
    end
  end
end
