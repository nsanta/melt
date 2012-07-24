module Melt

  def self.included(base)
    @melt_builders = {}
  end

  def define_response(name, &block)
    @melt_builders[name.to_sym] = block
  end

  def melt
    Melt::Responder.new(self, @melt_builders)
  end

end
