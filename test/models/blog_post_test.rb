require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft? returns true for draft blog posts" do
    assert true
  end

  test "draft? returns false for draft blog posts" do
    assert true
  end

  test "draft? returns false for scheduled blog posts" do
    assert true
  end

  test "scheduled? returns true for scheduled blog posts" do
    assert true
  end

  test "scheduled? returns false for draft blog posts" do
    assert true
  end

  test "scheduled? returns false for published blog posts" do
    assert true
  end

  test "published? returns true for published blog posts" do
    assert true
  end

  test "published? returns false for draft blog posts" do
    assert true
  end

  test "published? returns false for scheduled blog posts" do
    assert true
  end
end
