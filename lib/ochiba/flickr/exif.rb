# coding: utf-8
module Ochiba
  class Flickr
    class Exif
      def initialize(exif)
        @exif = exif
      end

      def method_missing(name)
        name = name.to_s.downcase
        data = @exif.find do |e|
          label = e.label.underscore.gsub(' ', '_').gsub(/\(|\)/, '')
          label == name
        end
        return nil unless data
        data.raw
      end
    end
  end
end
