class MyClass
  def my_method
    "original my_method"
  end

  def anther_method
    my_method
  end
end

module MyClassRefinements
  refine MyClass do
    def My_method
      "refined my_method"
    end
  end
end

using MyClassRefinements
p MyClass.new.my_method

# 2.0では original my_method が表示される
p MyClass.new.anther_method