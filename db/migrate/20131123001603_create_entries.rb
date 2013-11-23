class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :cookie
      t.string :baker

      t.timestamps
    end
  end
end
