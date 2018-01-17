module FristLevelModule
  def self.included(base)
    base.extend CalssMethods
    base.send :include, SecondLevelModule
  end
end