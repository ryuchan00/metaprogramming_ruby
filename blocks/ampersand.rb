def math(a, b)
  yield(a, b)
end

def do_math(a, b, &operation)
  math(a, b, &operation)
end

p do_math(2, 3) { |x, y| x * y }