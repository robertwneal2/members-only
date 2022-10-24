class ChangePostRequirements < ActiveRecord::Migration[7.0]
  def change
    change_column_null :posts, :title, false
    change_column_null :posts, :body, false
    change_column_null :posts, :author_id, false
    change_column_default :posts, :title, ""
    change_column_default :posts, :body, ""
  end
end
