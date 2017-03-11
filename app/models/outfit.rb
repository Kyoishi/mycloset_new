class Outfit < ActiveRecord::Base
    belongs_to :user
    has_many :coordinates
    has_many :days, :through => :coordinates,dependent: :destroy

    has_attached_file :image,
                    :storage => :s3,
                   :s3_credentials => {
                      access_key_id: ENV['AWS_ACCESS_KEY_ID'],
                      secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
                      s3_host_name: =>  "s3-ap-northeast-1.amazonaws.com"
                    }
                      styles:  { medium: "300x300#", thumb: "100x100#" }

    validates_attachment_content_type :image,
                                      content_type: ["image/jpg","image/jpeg","image/png"]

    validates :image, presence: true

end
