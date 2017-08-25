module ApplicationHelper
  def display_favicon
    if Rails.env.production?
      favicon_link_tag '/favicon.ico'
    else
      favicon_link_tag "/favicon-#{Rails.env}.ico"
  end
end
end
