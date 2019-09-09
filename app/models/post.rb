class Post < ApplicationRecord
	validates :conteudo, presence: true, length: { minimum: 5 }
end
