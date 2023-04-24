class Person
    attr_accessor :id, :name, :age
    def initialize(name = "Unknown", age, parent_permission = true)
      @id = rand(1..1000)
      @name = name
      @age = age
      @parent_permission = parent_permission
    end
  end
  
    private
    def of_age?
        @age >= 18 ? true : false
    end

end