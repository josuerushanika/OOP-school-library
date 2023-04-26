require_relative  'person'
require_relative  'capitalize_decorator'
require_relative  'trimmer_decorator'

person = Person.new(22, 'maximilianus')
  person.correct_name
  capitalizedPerson = Capitalize.new(person)
  capitalizedPerson.correct_name
  capitalizedTrimmedPerson = Trimmer.new(capitalizedPerson)
  capitalizedTrimmedPerson.correct_name