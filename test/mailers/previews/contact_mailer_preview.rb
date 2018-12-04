# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
	def contact
		contact = Contact.new(name: "星野源", email: "hoshino@gggen",text: "ドラえーもん", created_at: "2018-12-04 06:18:08")
	   
		ContactMailer.send_mail(contact)
	  end
end