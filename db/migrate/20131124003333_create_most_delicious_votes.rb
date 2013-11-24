class CreateMostDeliciousVotes < ActiveRecord::Migration
  def change
    create_table :most_delicious_votes do |t|
      t.integer :entry_id

      t.timestamps
    end
  end
end
