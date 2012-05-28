ActiveRecord::Schema.define(:version => 0) do
  create_table :products, :force => true do |t|
    t.string :name
    t.string :category_ref
  end
   
end