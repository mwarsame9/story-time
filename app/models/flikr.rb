class Flickr
  include HTTParty

  base_uri 'api.flickr.com'

  def self.getPhotos()
    return get('/services/rest/', :query => {
      :method => 'flickr.photos.getPopular',
      :api_key => '02d6e7ae3a37fd5bf6c6c553ec18956d'
      })
  end
end
