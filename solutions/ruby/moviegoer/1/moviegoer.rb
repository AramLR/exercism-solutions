# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer

  MIN_AGES = {
    for_senior_discount: 60,
    for_scary_movies: 18
  }

  BASE_PRICE = 15
  SENIOR_DISCOUNT = 5

  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age >= MIN_AGES[:for_senior_discount] ? BASE_PRICE - SENIOR_DISCOUNT : BASE_PRICE
  end

  def watch_scary_movie?
    @age >= MIN_AGES[:for_scary_movies]
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    @member ? "🍿" : (raise NotMovieClubMemberError.new) 
  end
end
