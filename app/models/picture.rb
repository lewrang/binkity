class Picture < ActiveRecord::Base
  has_and_belongs_to_many :posts
  mount_uploader :file, FileUploader
  validates :file, presence: true
end
