require_relative 'rental'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
  end

  def add_rental(rental)
    rentals.push(rental)
  end
end
