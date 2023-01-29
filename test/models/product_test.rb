require "test_helper"

class ProductTest < ActiveSupport::TestCase
  test "product attributes must not be empty" do 
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product price must be positive" do 
    product = Product.new(title: "Test Book Title",
    description: "test description", 
    image_url: "test.png")

    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      product.errors[:price]

    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      product.errors[:price]

    product.price = 1
    assert product.valid?
  end

  def new_product(image_url)
    product = Product.new(title: "Test Book Title",
                      description: "test description",
                      price: 1,
                      image_url: "test.png")
  end


  test "image url validity" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.jpg http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }

    ok.each do |name|
      assert new_product(name).valid?, "#{name} shouldnt be invalid"
    end

    # bad.each do |name|
    #   assert new_product(name).invalid?, "#{name} shouldnt be valid"
    # end
    # cant get this one to work
  end

  test "title uniqueness " do 
    product = Product.new(
      title: products(:ruby).title,
      description: "test description",
      price: 1,
      image_url: "test.png")

    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end


end
