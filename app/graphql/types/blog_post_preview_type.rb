module Types
  class BlogPostPreviewType < Types::BaseObject

      field :id, ID, null: false
      field :title, String, null: false
      field :author_name, String, null: false
      field :preview, String, null: false

      def preview
        object.body.truncate(100)
      end
  end
end
