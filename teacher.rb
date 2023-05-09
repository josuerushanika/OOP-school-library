require_relative './person'
require_relative './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(specialization, age, name, parent_permission: true)
    super(age: age, name: name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_h
    {
      id: @id,
      name: @name,
      age: @age,
      parent_permission: @parent_permission,
      rentals: @rentals.map(&:to_h),
      specialization: @specialization
    }
  end
end