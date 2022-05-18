class AddCategoryReferenceToEntries < ActiveRecord::Migration[7.0]
  def change
    add_reference :entries, :category
  end
end
