require_relative 'person'
require_relative 'decorator'
require_relative 'book'
require_relative 'rental'
require_relative 'teacher'
require_relative 'student'
require_relative 'classroom'

class App
   attr_accessor :people, :rentals, :books

    def initialize
        @people = []
        @books = []
        @rentals = []
    end
end