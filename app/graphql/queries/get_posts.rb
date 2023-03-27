module Queries
  class GetPosts < Queries::BaseQuery

    type [Types::BlogPostListItemType[]], null: false
    type Types::StringType, null: false
    def resolve
      # map all blog posts to BlogListItemType with BlogPost.body mapped to BlogListItemType.preview and return an array of BlogListItemType
      blogListItemType = []
      BlogPost.all.order(created_at: :desc).map do |post|
        blogListItemType.Add(BlogListItemType.new do |t|
          t.id = post.id
          t.title = post.title
          t.preview = post.body.truncate(100)
        end
      end
      blogListItemType

      end
    end
  end
end
