class Events < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :descripiton, :description
  end
end
