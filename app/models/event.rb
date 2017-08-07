class Event < ApplicationRecord
  STATUS = ["draft", "public", "private"]
  validates_inclusion_of :status, :in => STATUS
  validates_presence_of :name, :friendly_id
  before_validation :generate_friendly_id, :on => :create
  validates_uniqueness_of :friendly_id
  validates_format_of :friendly_id, :with => /\A[a-z0-9\-]+\z/
  belongs_to :category, :optional => true
  
  def to_param
    # "#{self.id}-#{self.name}"
    self.friendly_id
  end

  def generate_friendly_id
    self.friendly_id ||= SecureRandom.uuid
  end

end
