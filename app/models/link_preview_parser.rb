class LinkPreviewParser
  require 'nokogiri'
  require 'open-uri'
  require 'openssl'

  def self.parse(url)
    content = open(url, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE, 'User-Agent' => 'opera')
    doc = Nokogiri::HTML(open(content))
    page_info = {}
    doc.at('meta[property="og:title"]').nil? ? nil :  page_info[:meta_title] =  doc.css('title').text
    page_info[:title] =  doc.css('title').text

    doc.at('meta[name="description"]').nil? ? nil : page_info[:meta_description] =  doc.at('meta[name="description"]')['content'] || doc.at('meta[property="og:description"]')['content']

    doc.at('meta[property="og:image"]').nil? ? nil : page_info[:meta_image] = doc.at('meta[property="og:image"]')['content']

    return page_info
  end
end