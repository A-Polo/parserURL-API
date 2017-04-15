class AddColumnToParser < ActiveRecord::Migration[5.0]
  def change
    add_column :parser, :meta_title, :string
    add_column :parser, :meta_description, :string
    add_column :parser, :meta_image, :string
    add_column :parser, :title, :string
    add_column :parser, :link_news, :string
  end
end
