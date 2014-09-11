class Funcionario < ActiveRecord::Base
  belongs_to :centro
  belongs_to :programa
  def self.search(search,page)
		where(['upper(identificacion) like?', "%#{search}%".upcase]).paginate(page: page, per_page:20).order("identificacion")
	end
end
