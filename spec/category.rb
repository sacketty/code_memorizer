class Product< ActiveRecord::Base
  has_config :category
  validates_presence_of :category
end

class Category
  attr_accessor :code, :description
  @@codes = {}
  
  def self.abc
    return @@codes["ABC"] if @@codes["ABC"]
    @@codes["ABC"] = new(code: "ABC", description: "Category ABC")
  end
  
  def self.doc
    return @@codes["DOC"] if @@codes["DOC"]
    @@codes["DOC"] = new(code: "DOC", description: "Category Document")
  end
  
  def initialize(arg)
    @code=arg[:code]
    @description=arg[:description]
  end
end