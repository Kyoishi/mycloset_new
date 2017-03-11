class Outfit < ActiveRecord::Base
    belongs_to :user
    has_many :coordinates
    has_many :days, :through => :coordinates,dependent: :destroy

    has_attached_file :image,
                      styles:  { medium: "300x300#", thumb: "100x100#" }

    validates_attachment_content_type :image,
                                      content_type: ["image/jpg","image/jpeg","image/png"]

    validates :image, presence: true

end
