class CreateVoteCards < ActiveRecord::Migration
  def change
    create_table :vote_cards do |t|
      t.string :name
      t.integer :best_in_show_id
      t.integer :most_delicious_id
      t.integer :most_decorative_id
      t.integer :most_traditional_id
      t.timestamps
    end
  end
end
