# frozen_string_literal: true

module Resolvers
  # リゾルバ
  class PostConnectionResolver < GraphQL::Schema::Resolver
    type [Types::PostType], null: false

    def resolve
      Post.all
    end
  end
end
