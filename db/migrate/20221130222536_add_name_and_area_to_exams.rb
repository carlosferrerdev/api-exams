class AddNameAndAreaToExams < ActiveRecord::Migration[7.0]
  def change
    add_column :exams, :exam_name, :string
    add_column :exams, :area, :string
  end
end
