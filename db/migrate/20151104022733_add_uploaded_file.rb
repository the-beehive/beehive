class AddUploadedFile < ActiveRecord::Migration
  def change
    remove_column :images, :image_url

    add_attachment :images, :uploaded_file
  end
end
