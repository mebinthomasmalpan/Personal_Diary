class AddSubjectToMicropost < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :subject, :string
  end
end
