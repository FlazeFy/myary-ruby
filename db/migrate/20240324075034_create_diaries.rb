class CreateDiaries < ActiveRecord::Migration[7.0]
  def change
    create_table :diaries do |t|
      t.string :diary_title, null: false, limit: 75
      t.text :diary_desc, null: false
      t.date :diary_date, null: false
      t.integer :diary_mood, null: false, limit:2
      t.integer :diary_tired, null: false, limit:2

      # Props
      t.string :created_by, null: false, limit: 36
      t.timestamps
    end
  end
end
