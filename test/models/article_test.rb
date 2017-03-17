require "test_helper"

describe Article do
  let(:article) { Article.new }

  # it "must be valid" do
  #   value(article).must_be :valid?
  # end

  test "presence" do
    assert article.invalid?
    assert article.errors.include?(:title)
    assert article.errors.include?(:body)
    assert article.errors.include?(:released_at)
  end

  test "length" do
    article.title = "A" * 201
    assert article.invalid?
    assert article.errors.include?(:title)
  end

  test "expired_at" do
    article.released_at = Time.current
    article.expired_at = 1.days.ago
    assert article.invalid?
    assert article.errors.include?(:expired_at)
  end

  test "no_expiration" do
    article = FactoryGirl.build(:article)
    article.no_expiration = true
    assert article.valid?
    assert_nil article.expired_at
  end
end
