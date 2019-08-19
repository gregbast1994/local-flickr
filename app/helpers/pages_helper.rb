module PagesHelper
    def search(query)
        per_page = 20
        results = { 
            photos: flickr.photos.search(tags: query, per_page: per_page),
            # people: flickr.people.findByUsername( username: query)
        }
        parse(results)
    end

    def parse(results)
        stuff = {}
        results.each do |key, hash|
            stuff = hash.map do |result|
                { key, flickr.send(key).getInfo("#{key}_id" => result.id) }
            end
        end
        stuff
    end
end
