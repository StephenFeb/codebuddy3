class AddLanguagesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :languages, :text
  end
end
