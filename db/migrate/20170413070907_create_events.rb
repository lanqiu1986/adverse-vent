class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :department
      t.string :title
      t.text :descripiton

      t.timestamps
    end
  end
end
