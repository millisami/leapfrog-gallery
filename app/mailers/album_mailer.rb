class AlbumMailer < ActionMailer::Base

  default from: "millisami@gmail.com"

  def notify_user(album)
    @user = album.user
    @album = album

    mail(to: @user.email,
         subject: 'Album Created')
  end
end
