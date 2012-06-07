require 'spec_helper'
require 'shoulda'
describe Category do
  subject { Category.doc}
  its(:code) { should == "DOC"}
end
describe Product do
  subject{ Product.new(category: Category.abc)}
  it {should respond_to(:category)}
  it {should respond_to(:category_ref)}
  its(:category_ref) {should == "ABC"}
  it "category_ref should be set" do
    pr = Product.new
    pr.category=Category.abc
    pr.category_ref.should == "ABC"
  end
  it "should give correct category" do
    pr = Product.new(category_ref: "ABC")
    pr.category.should == Category.abc
  end
  describe "validation" do
    subject {Product.new}
    it {should validate_presence_of(:category)}
  end
end
describe Movie do
  subject{ Movie.new(genre: Category.doc)}
  it {should respond_to(:genre)}
  it {should respond_to(:genre_ref)}
  its(:genre_ref) {should == "DOC"}
  its(:genre) {should be_an_instance_of(Category) }
  it "genre_ref should be set" do
    pr = Movie.new
    pr.genre=Category.doc
    pr.genre_ref.should == "DOC"
  end
  it "should give correct genre" do
    pr = Movie.new(genre_ref: "DOC")
    pr.genre.should == Category.doc
  end
  describe "validation" do
    subject {Movie.new}
    it {should validate_presence_of(:genre)}
  end
end