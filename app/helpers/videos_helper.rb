module VideosHelper

  require 'net/http'

  VIMEO_REGEX = %r(^https?:\/\/(?:.*?)\.?(vimeo)\.com\/(\d+).*$)

  # Get Vimeo video iframe from given URL
  def get_vimeo_iframe id, width, height
    uri      = "https://vimeo.com/api/oembed.json?url=https%3A//vimeo.com/#{ id }&width=#{ width }&height=#{ height }"
    response = Net::HTTP.get( URI.parse( uri ))
    json     = JSON.parse response
    json['html'].html_safe
  end

end
