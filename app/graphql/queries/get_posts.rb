module Queries
  class GetPosts < Queries::BaseQuery

    type [Types::BlogPostPreviewType], null: false
    def resolve
      BlogPost.all
    end
  end
end
