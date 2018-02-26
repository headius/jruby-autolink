require "jruby_autolink/version"
require "jruby_autolink_jars"

module JRubyAutolink
  java_import org.nibor.autolink.LinkExtractor
  java_import org.nibor.autolink.Autolink
  java_import org.nibor.autolink.LinkType

  java_import java.util.EnumSet

  ALL_LINK_TYPES = EnumSet.of(LinkType::URL, LinkType::WWW, LinkType::EMAIL)

  def auto_link(content, mode = :all, link_attr=nil, skip_tags=nil, flags=0)
    case mode
      when :all
        builder = LinkExtractor.builder
               .link_types(ALL_LINK_TYPES)
               .build
        links = builder.extract_links(content)
        return Autolink.render_links(content, links) do |link, input, builder|
          builder.append('<a href="')
              .append(input, link.begin_index, link.end_index)
              .append('">')
              .append(input, link.begin_index, link.end_index)
              .append('</a>')
        end
      else
        raise "unsupported args: #{[mode, link_attr, skip_tags, flags]}"
    end
  end
  module_function :auto_link
end
