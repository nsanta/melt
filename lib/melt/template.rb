module Melt
  class Template 
    attr_reader :obj, :data, :json_encoder, :xml_enconder

    def initialize(obj)
      @obj = obj
      @data = {}
      @json_enconder = Yajl::Encoder.new
      @xml_enconder = XmlSimple
    end

    def add(key)
      value =  @obj.send(key)
      data[key] = value
    end

    def to_json
      json_encoder.encode(data)
    end

    def to_xml
      @xml_enconder.xml_in(nil, data)
    end
  
  end
end
