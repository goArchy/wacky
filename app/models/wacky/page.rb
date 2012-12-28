module Wacky
  class Page < ActiveRecord::Base
    validates_presence_of :slug

    def to_html
      parser.parse(body).to_html
    end

    def to_param
      slug
    end

    private
    def parser
      Wikitop::Parser.new
    end
  end
end
