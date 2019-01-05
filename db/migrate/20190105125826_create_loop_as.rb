class CreateLoopAs < ActiveRecord::Migration[5.2]
  def change
    create_table :loop_as do |t|

      t.timestamps
    end
  end
end
