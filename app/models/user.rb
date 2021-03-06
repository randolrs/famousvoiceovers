class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :gigs

    has_many :auditions


	has_attached_file :image, 
        :styles => { :medium => "194x194#", :small => "70x70#", :thumb => "30x30#"}, 
        :default_url => 'missing_:style.png',
        :s3_protocol => :https

    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


    def is_my_gig(gig_id)

      return self.gigs.exists?(gig_id)

    end

end
