json.array! @exams do |exam|
  json.extract! exam, :id, :description
end
