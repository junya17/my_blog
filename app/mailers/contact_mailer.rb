# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  def send_mail(contact)
    @contact = contact
    mail(
      from: @contact.email,
      to: 'tajnsy@gmail.com',
      date: @contact.created_at,
      subject: 'お問い合わせ通知'
    )
end
end
