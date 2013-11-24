class CreateBestInShowVotes < ActiveRecord::Migration
  def change
    create_table :best_in_show_votes do |t|
      t.integer :entry_id

      t.timestamps
    end
  end
end
