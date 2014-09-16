class Mobiliario < ActiveRecord::Base
  belongs_to :ficha
  belongs_to :programa
end
