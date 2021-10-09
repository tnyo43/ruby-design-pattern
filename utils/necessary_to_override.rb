# 参考: https://qiita.com/QUANON/items/21f93d7f31c37632e8e2

module NecessaryToOverride
  def necessary_to_override(*methods)
    methods.each do |method|
      define_method(method) do |*_args|
        raise NotImplementedError, "You must implement #{self.class}##{__method__}"
      end
    end
  end
end

Module.include(NecessaryToOverride)
