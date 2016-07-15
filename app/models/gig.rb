class Gig < ActiveRecord::Base
	belongs_to :user
	
	def celeb

		if self.celeb_id
			
			return Celeb.find(self.celeb_id)
		
		else

			return Celeb.find(1)
		end

	end

	def status 

		return "Awaiting Auditions"


	end

end
