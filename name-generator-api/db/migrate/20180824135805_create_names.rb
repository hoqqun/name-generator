class CreateNames < ActiveRecord::Migration[5.2]
  def change
    create_table :names do |t|

      t.string :roman_letter
      t.string :japanese_name
      t.string :gender
      t.timestamps
    end
  end
end
