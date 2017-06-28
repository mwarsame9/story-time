class AddAuthor < ActiveRecord::Migration[5.1]
  def change
    change_table :sentences do |t|
      t.column :author, :string
    end
  end
end
