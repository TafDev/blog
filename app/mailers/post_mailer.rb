class PostMailer < ApplicationMailer

  def commented(post)
    @post = post
    @greeting = "Hi"

    mail to: post.user.email
  end

  def deleted
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def updated
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
