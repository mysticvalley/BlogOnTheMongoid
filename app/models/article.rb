class Article
  
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :title, :type => String
  field :content, :type => String

  validates_presence_of :title,:content
  
  embeds_many :comments
  
  acts_as_slugoid :generate_from => :title
 
  
end
