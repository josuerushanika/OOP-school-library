class Person
    attr_accessor :id, :name, :age
    def initialize(name = "Unknown", age, parent_permission = true)
      @id = rand(1..1000)
      @name = name
      @age = age
      @parent_permission = parent_permission
    end
  
     def can_use_services?
        of_age? ? true : false
     end

    private
    def of_age?
        return true if age >= 18

        false
    end
end