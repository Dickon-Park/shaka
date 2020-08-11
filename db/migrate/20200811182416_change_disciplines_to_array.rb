class ChangeDisciplinesToArray < ActiveRecord::Migration[6.0]
  def change
    change_column :spots, :disciplines, :text, array: true, using: "(string_to_array(disciplines, ','))"
  end
end
