require 'pry'

# class Object
#   def with(resource)
#     begin
#       yield
#     rescue Exception => ex
#       resource.dispose
#       raise ex
#     end
#     resource.dispose
#   end
# end


class Object
  def with(resource)
    begin
      yield
    ensure
      resource.dispose
    end
  end
end
