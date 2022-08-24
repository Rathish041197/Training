class Dog
  def bark
    if block_given?
      yield 
    else 
      "bow bow"
    end
  end
end
indian = Dog.new
foreign = Dog.new
puts indian.bark
puts foreign.bark {
    "woof woof"
}