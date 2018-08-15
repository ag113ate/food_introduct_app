class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :menu
      t.text :description

      t.timestamps
    end
  end
end
