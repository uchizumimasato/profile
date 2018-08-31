class CreateTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :texts do |t|
      t.string          :tag
      t.text            :text
      t.timestamps
    end
  end
end
