class HomeController < ApplicationController
  def index
    @professor = Professor.all
    @count = (0..Professor.count-1).to_a
    @qna = Post.last(6).reverse
    @store = Store.last(6).reverse
  end

end
