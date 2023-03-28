module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # field :node, field: GraphQL::Relay::Node.field
    # field :nodes, field: GraphQL::Relay::Node.plural_field

    field :get_posts, resolver: Queries::GetPosts

  end
end
