require_relative 'base_decorator'

class Trimmer < Decorator
  def correct_name
    @nameable.correct_name[0, 10]
  end
end
