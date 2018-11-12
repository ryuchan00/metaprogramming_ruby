class InstanceVariableVsInstanceMethod
  attr_accessor :id

  def initialize
    id = 'ini'
  end

  def id
    'method'
  end
end

i = InstanceVariableVsInstanceMethod.new
p i.id
