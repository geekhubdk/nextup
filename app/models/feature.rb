class Feature < ActiveRecord::Base

	has_many :subscribers

	def add_subscriber(email)
		email.downcase!
		if self.subscribers.where("email=?", email).length == 0
			self.subscribers.create({email: email})
		end
	end
end
