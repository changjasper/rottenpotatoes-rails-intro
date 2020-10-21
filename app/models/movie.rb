class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G','PG','PG-13','R'] 
  end  
  
  def self.with_ratings(ratings_list, sort_by)
    if ratings_list.nil?
      return sort_by.nil? ? Movie.all : Movie.all.order(sort_by)
    else
      return sort_by.nil? ? Movie.where(rating: ratings_list) : Movie.where(rating: ratings_list).order(sort_by)
    end
  end
end
