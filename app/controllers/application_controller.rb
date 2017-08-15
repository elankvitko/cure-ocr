class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def upload_pic( image )
    image = Cloudinary::Uploader.upload( Rails.root.join( 'public', 'uploads', image ), api_key: "875836294774873", api_secret: "2ODjxbzdrSstbEOAphaC0hrZI1g", cloud_name: "dsqbi2aqd" )
    image[ 'url' ]
  end

  def ocr_helper
    OcrSpace::Resource.new(apikey: "285458c2f288957")
  end
end
