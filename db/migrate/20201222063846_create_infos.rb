class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.string :name
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
