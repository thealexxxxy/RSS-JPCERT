#! ruby -Ku

require "open-uri"
require 'rexml/document'
require 'kconv'

xml = open("https://www.jpcert.or.jp/rss/jpcert.rdf") {|f| f.read}
    doc = REXML::Document.new(xml)

# 注意喚起と緊急報告、Weekly Report の新着情報
s_ary = ""

#報告されている数を数える。タイトルも含まれており一個多い。　小要素数表示
doc.elements.each('rdf:RDF')do |element|
 i = element.elements.size

n = 1
while n < i

title = doc.elements["rdf:RDF/item/title[#{n}]"].text
link = doc.elements["rdf:RDF/item/link[#{n}]"].text
id = doc.elements["rdf:RDF/item/dc:identifier[#{n}]"].text
data = doc.elements["rdf:RDF/item/dc:date[#{n}]"].text

s_ary << title + "\n"
s_ary << link + "\n"
s_ary << data + "\n"
s_ary << "\n"

 n += 1  
end
end

file_name = "jpcert_data.txt"

File.open(file_name,'w'){|file|
 file.write s_ary
}
