class FixTranslationIndices < ActiveRecord::Migration[4.2]
  def change
    remove_index :translations, name: :translations_gin_fields
    add_index :translations, [:translatable_type, :translatable_id]
  end
end
