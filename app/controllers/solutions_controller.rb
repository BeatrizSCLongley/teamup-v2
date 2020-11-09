class SolutionsController < ApplicationController
  def index
    @solutions = Solution.new
    @contact = Contact.new
  end
end
