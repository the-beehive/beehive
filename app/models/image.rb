class Image < ActiveRecord::Base
  has_attached_file :uploaded_file
  validates_attachment_content_type :uploaded_file, :content_type => /\Aimage\/.*/
  belongs_to :product

  validates :uploaded_file_file_name, presence: true
end
