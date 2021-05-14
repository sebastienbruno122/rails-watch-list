require "json"
require "open-uri"

Movie.destroy_all
page_number = 1
20.times do
  url = "http://tmdb.lewagon.com/movie/top_rated?page=#{page_number}"
  top_movies_serialized = URI.open(url).read
  top_movies = JSON.parse(top_movies_serialized)
  top_movies["results"].each do |movie|
    Movie.create(
      title: movie["title"],
      overview: movie["overview"],
      poster_url: "https://image.tmdb.org/t/p/original#{movie["backdrop_path"]}",
      rating: movie["vote_average"]
    )
  end
  page_number += 1
end
