class AddColumnToInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :infos, :youtube_url, :string
  end
end
