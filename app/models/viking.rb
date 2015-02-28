class Viking < ActiveRecord::Base
	extend FriendlyId
	
	validates_presence_of :name, :image, :history
	validates_length_of :history, minimum: 20
	validates_uniqueness_of :name

	has_attached_file :image, :styles => { :medium => "250x250", :thumb => "100x100" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	friendly_id :name, use: [:slugged, :history]

	def should_generate_new_friendly_id?
  		slug.blank? || name_changed?
	end

	def self.search(query)
		if query.present?
			where(['name LIKE :query', query: "%#{query}%"])
		else
			all
		end
	end

end
