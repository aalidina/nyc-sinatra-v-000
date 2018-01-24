class CreateLandmarks < ActiveRecord::Migration[4.2]

  def up
    create_table :landmarks do |t|
      t.string :name
      t.string :figure_id
      t.integer :year_completed
    end

    def down
      drop_table :landmarks
    end
  end
end
