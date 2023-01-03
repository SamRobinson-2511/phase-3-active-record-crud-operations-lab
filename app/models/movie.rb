class Movie < ActiveRecord::Base

    def self.create_with_title title
        find_or_create_by(title: title)
    end

    def self.first_movie 
        first
    end

    def self.last_movie
        last
    end

    def self.movie_count
        count
    end

    def self.find_movie_with_id id
        find(id)
    end

    def self.find_movie_with_attributes attr
        find_by(attr)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    def update_with_attributes(attr)
        update(attr)
    end

    def self.update_all_titles(title)
        update_all(title: title)
    end

    def self.delete_by_id(id)
        find(id).destroy
    end


    def self.delete_all_movies
        destroy_all
    end

   

end