class MoviesController < ApplicationController
  def index
    query = params[:query]

    if query.present?

      @movies = Movie.search(query)

      # sql = 'title @@ :input OR
      #        syllabus @@ :input OR
      #        directors.first_name @@ :input OR
      #        directors.last_name @@ :input'

      # @movies = Movie.joins(:director).where(sql, input: "%#{query}%")
    else
      @movies = Movie.all
    end

  end

end
