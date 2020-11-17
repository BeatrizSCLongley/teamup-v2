class ContactsController < ApplicationController
  def new
    @solution = Solution.find(params[:solution_id])
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @solution = Solution.find(params[:solution_id])
    @contact.solution = @solution

    if verify_recaptcha(model: @contact) && @contact.save
      if @solution.name == 'neuro-selfie™' || @solution.name == 'teamup∞™ 180°' || @solution.name == 'teamup∞™ 360°' || @solution.name == 'teamup∞™ Team Effectiveness'
        redirect_to solution_path(@solution), notice: "Thanks, we have received your contact information. You will now be able to access a #{@solution.name} sample report"
      else
        redirect_to new_solution_contact_path(@solution), notice: "Thanks, we have received your contact information. You will receive an email from hello@teamup.inc to your #{@contact.email} account"
      end
      message = ContactMailer.with(contact: @contact).new_contact
      message.deliver_later # deliver_later - asynchronously or deliver_now
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
