class Director
  def initialize(builder)
    @builder = builder
  end

  def construct
    @builder.make_title 'animals'
    @builder.make_string 'dog'
    @builder.make_items %w[ぽち ワン]
    @builder.make_string 'cat'
    @builder.make_items %w[たま にゃん]
    @builder.close
  end
end
