class FocusingSection < ActiveRecord::Base
belongs_to :industry

validates_presence_of :name, :industry_id

end
