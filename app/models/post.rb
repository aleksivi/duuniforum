class Post < ActiveRecord::Base
belongs_to :industry
 belongs_to :focusing_section
belongs_to :country
belongs_to :user


validates_presence_of  :industry_id, :focusing_section_id, :country_id


def self.search(search)
  if search
    find(:all, :conditions => ['employer LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end

