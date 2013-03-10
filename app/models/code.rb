class Code < ActiveRecord::Base
  attr_accessible :code, :lang, :q_id  
  belongs_to :coder
end
