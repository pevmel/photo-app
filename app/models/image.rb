class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader

  private

  def picture_size
    if picture.size > 5.megabites
      errors.add(:picture, 'must be less then 5MB')
    end
  end
end
