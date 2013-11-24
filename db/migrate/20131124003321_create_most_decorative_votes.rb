class CreateMostDecorativeVotes < ActiveRecord::Migration
  def change
    create_table :most_decorative_votes do |t|
      t.integer :entry_id

      t.timestamps
    end
  end
end
