json.array! @exams do |exam|
  json.extract! exam, :id, :exam_name, :area, :description
end
