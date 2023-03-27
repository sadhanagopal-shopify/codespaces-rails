module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`


    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    # field :get_posts, resolver: Queries::GetPosts

    field :get_posts, Types::String, null: false,
    description: "An example field added by the generator"
    def test_field
      "hello world"
    end
  end
end
