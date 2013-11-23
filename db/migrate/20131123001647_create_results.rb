class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :award_id
      t.integer :entry_id
      t.integer :user_id

      t.timestamps
    end
  end
end
