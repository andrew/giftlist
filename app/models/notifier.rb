class Notifier < ActionMailer::Base
  def new_reservation(reservation)
    recipients   ENV['ADMIN_EMAIL'] || 'someone@example.com'
    from         "Giftlist <noreply@giftlist.heroku.com>"
    subject      "#{reservation} just reserved the #{reservation.gift} from your giftlist"
    sent_on      Time.now
    body         :reservation => reservation
  end
end