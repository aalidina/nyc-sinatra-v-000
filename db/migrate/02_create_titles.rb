class CreateTitles < ActiveRecord::Migration[4.2]
  def up
    create_table :titles do |t|
      t.string :name
      t.integer :landmarks_id
    end
  end

  def down
    drop_table :titles
  end
end
