class InstanceVariableVsInstanceMethod
  def initialize
    id = 'ini'
  end


  attr_accessor :id

  def id
    'method'
  end
end

i = InstanceVariableVsInstanceMethod.new
p i.id
