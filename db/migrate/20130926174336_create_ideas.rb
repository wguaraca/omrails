class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.integer :reputation

      t.timestamps
    end
  end
end
