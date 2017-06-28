class CreateSentences < ActiveRecord::Migration[5.1]
  def change
    create_table :sentences do |t|
      t.column :text, :string
      t.column :story_id, :integer

      t.timestamps
    end
  end
end
