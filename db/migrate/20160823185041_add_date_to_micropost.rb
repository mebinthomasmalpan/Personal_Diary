class AddDateToMicropost < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :date, :string
  end
end
