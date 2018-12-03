class ContactsController < ApplicationController
	def create
		@contact = Contact.new(contact_params)
		respond_to do |format|
			if @contact.save
			flash[:success] = '送信が完了しました。お問い合わせありがとうございます。'
			  format.html { redirect_to portfolios_path }
			  format.json { render :index, status: :created, location: portfolios_path }
			else
			  format.html { render 'portfolios/index' }
			  format.json { render json: contact.errors, status: :unprocessable_entity }
			end
		  end
	end	

	private

	def contact_params
		params.require(:contact).permit(:name, :email, :text, :agreement)
	end

end