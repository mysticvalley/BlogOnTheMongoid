class Article
  include Mongoid::Document
  include Mongoid::Timestamp
  field :title, :type => String
  field :content, :type => String
  field :published_on, :type => DateTime
  validates_presence_of :title,:content
  embeds_many :comments
end
