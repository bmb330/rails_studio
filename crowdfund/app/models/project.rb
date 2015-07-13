class Project < ActiveRecord::Base
	has_many :pledges

	validates :name, :description, presence: true
	validates :description, length: { maximum: 500 }
	validates :target_pledge_amount, numericality: { greater_than: 0 }
	validates :website, allow_blank: true, format: {
		with:		 /https?:\/\/[\S]+\.[\S]+/i,
		message: "must be a valide URL"
	}
	validates :image_file_name, allow_blank: true, format: {
		with:		 /\w+\.(gif|jpg|png)\z/i,
		message: "must reference a GIF, JPG, or PNG image"
	}

  def self.accepting_pledges
    where("pledging_ends_on >= ?", Time.now).order("pledging_ends_on asc")
  end

  def pledging_expired?
    pledging_ends_on < Date.today
  end
end
