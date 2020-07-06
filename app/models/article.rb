class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 }

	def self.create(params)
		article = Article.new({:title => params[:title], :text => params[:text]})
		return article
	end
end
