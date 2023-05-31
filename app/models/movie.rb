class Movie < ActiveRecord::Base

    # Create a new movie record with the given title
    def self.create_with_title(title)
      Movie.create(title: title)
    end
  
    # Retrieve the first movie record from the database
    def self.first_movie
      Movie.first
    end
  
    # Retrieve the last movie record from the database
    def self.last_movie
      Movie.last
    end
  
    # Get the total count of movie records in the database
    def self.movie_count
      Movie.count
    end
  
    # Find a movie record with the given id
    def self.find_movie_with_id(id)
      Movie.find(id)
    end
  
    # Find a movie record with the given attributes
    def self.find_movie_with_attributes(attributes)
      Movie.find_by(attributes)
    end
  
    # Find movies released after the year 2002
    def self.find_movies_after_2002
      Movie.where("release_date > 2002")
    end
  
    # Update the attributes of the current movie record
    def update_with_attributes(attributes)
      self.update(attributes)
    end
  
    # Update the title attribute of all movie records
    def self.update_all_titles(title)
      Movie.update(title: title)
    end
  
    # Delete a movie record with the given id
    def self.delete_by_id(id)
      movie = Movie.find(id)
      movie.destroy
    end
  
    # Delete all movie records from the database
    def self.delete_all_movies
      Movie.destroy_all
    end
  
  end
  