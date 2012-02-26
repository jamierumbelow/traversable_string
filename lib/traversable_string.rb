module TraversableString
  def self.extended base
    base.instance_variable_set :@char, 0
    base.class.send :define_method, :char do
      self[@char]
    end
  end

  def forward characters
    @char += characters
    char || false
  end

  def read characters
    forward characters
  end

  def backward characters
    if (@char - characters) >= 0
      @char -= characters
      char
    else
      false
    end
  end
end