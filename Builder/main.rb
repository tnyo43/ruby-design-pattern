load 'director.rb'
load 'text_builder.rb'
load 'html_builder.rb'

text_builder = TextBuilder.new
director_t = Director.new text_builder
director_t.construct
puts text_builder.result

html_builder = HTMLBuilder.new
director_h = Director.new html_builder
director_h.construct
puts [html_builder.result, 'が作成されました'].join

#
# output
#
# 『animals』
#
#
# dog
#
# ぽち
# ワン
#
# cat
#
# たま
# にゃん
#
# animals.htmlが作成されました
#
# > animals.html
#
# <html>
#   <head>
#     <title>animals</title>
#   </head>
#   <body>
#     <h1>animals</h1>
#     <p>dog</p>
#     <ul>
#       <li>ぽち</li>
#       <li>ワン</li>
#     </ul>
#     <p>cat</p>
#     <ul>
#       <li>たま</li>
#       <li>にゃん</li>
#     </ul>
#   </body>
# </html>
#
