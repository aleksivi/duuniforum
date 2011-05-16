class Post < ActiveRecord::Base
belongs_to :industry
 belongs_to :focusing_section
validates_presence_of  :industry_id, :focusing_section_id
end
