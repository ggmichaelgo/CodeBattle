class Host < ActiveRecord::Base
	attr_accessible :description, :name, :logo_path
	belongs_to :ctf
end
