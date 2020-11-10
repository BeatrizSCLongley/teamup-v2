class ContactsController < ApplicationController
  def new
    @solution = Solution.find(params[:solution_id])
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @solution = Solution.find(params[:solution_id])
    @contact.solution = @solution

    if @contact.save
      # && verify_recaptcha(model: @contact)
      # solution_path(@solution)
      redirect_to new_solution_contact_path(@solution), notice: "Thanks, we have received your contact information. You will receive an email from hello@teamup.inc to your #{@contact.email} account"
      message = ContactMailer.with(contact: @contact).new_contact
      message.deliver_now
    else
      render :new, notice: "There was an error sending your contact form. Please try again."
    end
  end

  private

  def contact_params
    # No need for topic as it's defined by the solution's name
    params.require(:contact).permit(:name, :email, :message)
  end
end
