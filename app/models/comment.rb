class Comment < ApplicationRecord
  belongs_to :article

	def self.create(params)
		comment = Comment.new({:commenter => params[:comment], :body => params[:body]})
		comment.save
		return comment
	end
end
