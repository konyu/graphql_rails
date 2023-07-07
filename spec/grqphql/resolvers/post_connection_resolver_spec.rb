# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Resolvers::PostConnectionResolver do
  describe '#resolve' do
    let(:post1) { Post.create!(name: 'post1')}
    let(:post2) { Post.create!(name: 'post2')}

    before do
      post1
      post2
    end

    it 'returns a list of users' do
      result = Resolvers::PostConnectionResolver.new(
        context: {},
        field: nil,
        object: nil
      ).resolve
      expect(result).to match_array([post1, post2])
    end
  end
end