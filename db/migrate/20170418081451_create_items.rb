class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :meta_title
      t.string :meta_description
      t.string :link_news
      t.string :meta_image
      t.string :title

      t.timestamps
    end
  end
end
