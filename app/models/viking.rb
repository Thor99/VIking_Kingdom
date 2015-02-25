class Viking < ActiveRecord::Base
	
	validates_presence_of :name, :image, :history
	validates_length_of :history, minimum: 20

	has_attached_file :image, :styles => { :medium => "250x250", :thumb => "100x100" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
