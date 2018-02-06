class Array
  def my_each
    self.length.times do |i|
      yield(self[i])
    end
  end

  def my_each_with_index
    self.length.times do |i|
      yield(self[i], i)
    end
  end

  def my_select
    self.each do |el|
      self.delete(el) unless yield(el)
    end
    self
  end

  def my_all?

  end

end
