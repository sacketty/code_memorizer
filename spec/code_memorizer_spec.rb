require 'spec_helper'
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
end