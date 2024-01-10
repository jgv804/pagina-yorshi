class Product < ApplicationRecord
    enum :category, [ :kit, :beads, :accesorios ]
    has_one_attached :image
    mount_uploader :src, ImageUploader


    before_create :set_image

    def set_image
        self.src = "default.png" if src.nil?
    end

  end