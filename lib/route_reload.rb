class RouteReload 

  def self.reload!
    Rails.application.routes.draw do
      Url.all.each do |url|
        get "/#{url.alphanumeric}" => redirect(url.original_url) 
      end
    end
  end
end
