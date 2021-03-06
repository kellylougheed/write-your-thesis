class NotificationMailer < ActionMailer::Base
  default from: "no-reply@writeyourthesis.herokuapp.com"

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user

    if !@place_owner.nil?
      mail(to: @place_owner.email,
      subject: "A comment has been added to #{@place.name}")
    end

  end
end