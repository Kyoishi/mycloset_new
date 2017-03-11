class Outfit < ActiveRecord::Base
    belongs_to :user
    has_many :coordinates
    has_many :days, :through => :coordinates,dependent: :destroy

    has_attached_file :image,
                    :storage => :s3,
                    :s3_credentials => {
                      :access_key_id => S3KEY,
                      :secret_access_key => S3SECRET,
                      :s3_host_name =>  "s3-ap-northeast-1.amazonaws.com"
                    }
                      styles:  { medium: "300x300#", thumb: "100x100#" }

    validates_attachment_content_type :image,
                                      content_type: ["image/jpg","image/jpeg","image/png"]

    validates :image, presence: true

end
