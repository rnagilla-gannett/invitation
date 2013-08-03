class RsvpMailer < ActionMailer::Base
	default from: 'SupriyaandRakesh@gmail.com'
  def rsvp_thankyou(guest)
  	@guest = guest

  	@message = @guest.present? ? "See you guys soon!" : "We will miss you guys at our wedding!"
  	mail(to: guest.email, bcc: "supriyaandrakesh@gmail.com", subject: 'Thank you for you RSVP!')
  end

end
