module UsersHelper

  # We create this method and call on it in our users index view
  def gravatar_for(user, options)
    # do somethings with the options hash
    debug(options)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end
