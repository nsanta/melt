module Melt
  class Responder

    def initialize(obj, builders)
      @template = Template.new(obj)
      @builders = builders
      @builders.each do |key, block|
      define_method key do 
        tap{block.call(template)}
      end
    end
  
    def to_json
      @template.to_json
    end

    def to_xml
      @template.to_xml
    end

  end
end
