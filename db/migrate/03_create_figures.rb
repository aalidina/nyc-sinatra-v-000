class CreateFigures < ActiveRecord::Migration[4.2]
  def up
    create_table :figures do |t|
      t.string :name
    end
  end

  def down
    drop_table :figure_ids
  end
end
