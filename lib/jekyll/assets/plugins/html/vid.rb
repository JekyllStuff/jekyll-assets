# Frozen-string-literal: true
# Copyright: 2012 - 2017 - MIT License
# Encoding: utf-8

require "jekyll/assets"
require "nokogiri"

module Jekyll
  module Assets
    class HTML
      class Video < HTML
        content_types %r!^video/.*$!

        # --
        def run
          Nokogiri::HTML::Builder.with(doc) do |d|
            d.video("No support for video.", args.to_h({
              html: true, skip: HTML.skips
            }))
          end
        end
      end
    end
  end
end
