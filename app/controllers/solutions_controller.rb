class SolutionsController < ApplicationController
  def index
    @solutions = Solution.all
  end

  def show
    @solution = Solution.find(params[:id])
    @solutions = Solution.all
    @contact = Contact.new
  end
end
