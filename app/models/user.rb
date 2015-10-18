class User < ActiveRecord::Base

  has_secure_password
  has_many :listings, :foreign_key => "owner_id"
  has_and_belongs_to_many :unit_of_studies, :join_table => "users_unit_of_studies"
  has_and_belongs_to_many :degrees, :join_table => "users_degrees"

  # for the profile pictures
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


  STANDARD_EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  UNI_EMAIL_REGEX = /[a-z]{4}[0-9]{4}+@uni.sydney.edu.au/i
  validates_presence_of :first_name
  validates_length_of :first_name, :maximum => 25
  validates_presence_of :last_name
  validates_length_of :last_name, :maximum => 30
  validates_presence_of :birth_date
  # validates :email, uniqueness: true
  # validates_uniqueness_of :email
  # validates_format_of :email, :with => UNI_EMAIL_REGEX
  # validates_confirmation_of :email

  validates :email, :presence => true,
    :uniqueness => true,
    # :confirmation => true,
    :format => { :with => UNI_EMAIL_REGEX }

end
