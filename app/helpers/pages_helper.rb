module PagesHelper
    def search(query)
        per_page = 20
        { 
            photos: flickr.photos.search(tags: params[:s], per_page: per_page),
            users: flickr.photos.search(user_id: params[:s], 
                                         username: params[:s],
                                         per_page: per_page )
        }
    end
end
