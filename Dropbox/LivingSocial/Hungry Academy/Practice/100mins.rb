class Repeater
  def (ary=[])
    @cache = ary
  end

  def each(&block)
    @cache.each do &block
  end

  def repeat(n)
    for _ in 1..n do
      yield _ if block_given?
    end
  end
end