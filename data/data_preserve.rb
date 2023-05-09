require 'json'

# Write objects to a JSON file
def write_data(objects, filename)
  json_data = JSON.pretty_generate(objects.map(&:to_h))
  File.write(filename, json_data)
end

# Read objects from a JSON file
def read_data(filename)
  return [] unless File.exist?(filename) && File.size(filename) != 0

  json_data = File.read(filename)
  data = JSON.parse(json_data)
  data.map { |obj| obj.transform_keys(&:to_sym) }
end

