class Visitante < ActiveRecord::Base
	def self.search(search,page)
		where(['upper(identificacion) like?', "%#{search}%".upcase]).paginate(page: page, per_page:5).order("identificacion")
	end
end
