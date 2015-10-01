class Sticker < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validate :image_size_validation, :if => "image?"

  belongs_to :user

  def image_size_validation
    if image.size > 1.megabytes
      errors.add(:base, "Image should be less than 1MB")
    end
  end

end
