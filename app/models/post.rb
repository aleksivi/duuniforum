class Post < ActiveRecord::Base
belongs_to :industry
 belongs_to :focusing_section
belongs_to :country

validates_presence_of  :industry_id, :focusing_section_id, :country_id
end
