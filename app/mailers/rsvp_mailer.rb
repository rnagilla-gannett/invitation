class RsvpMailer < ActionMailer::Base
  default from: "nagillarakeshreddy@gmail.com"

  def rsvp_thankyou(guest)
  	@guest = guest

  	@message = @guest.present? ? "See you guys soon!" : "We will miss you guys at our wedding!"
  	mail(to: ["nagillarakeshreddy@gmail.com",guest.email], subject: 'Thank you for you RSVP!')
  end

end
