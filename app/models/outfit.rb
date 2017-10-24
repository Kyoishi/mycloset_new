class Outfit < ActiveRecord::Base
    belongs_to :user
    belongs_to :category

    has_attached_file :image,
                      styles:  { medium: "300x300#", thumb: "100x100#" },
    :storage => :s3,
    :s3_permissions => :private,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => ":class/:attachment/:id/:style.:extension"

    validates_attachment_content_type :image,
                                      content_type: ["image/jpg","image/jpeg","image/png"]

    validates :image, presence: true

end
