require_relative 'person'

class Student < Person
  attr_accessor :classroom
  attr_accessor :parent_permission

  def initialize(age, name ='Unknown', parent_permission: true)
    super(age,name,parent_permission:parent_permission)
    
    @classroom = nil
    @rentals = []
  end
  
  def play_hooky
    '¯\(ツ)/¯'
  end

  def to_h
    {
      id: @id,
      age: @age,
      name: @name,
      parent_permission: @parent_permission,
      rentals: @rentals.map(&:to_h),
      classroom: @classroom
    }
  end
end
