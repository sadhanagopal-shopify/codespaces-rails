# frozen_string_literal: true

module Types
  class BlogListItemType < Types::BaseObject
    field :id, ID, null: false
    field :title, Types::StringType, null: false
    field :preview, Types::StringType, null: false
  end
end
