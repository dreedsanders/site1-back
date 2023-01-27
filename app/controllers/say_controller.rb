class SayController < ApplicationController


  def hello
    @time=Time.now
  end

  def goodbye
  end

  def say_goodnight(name)
    result = 'Good night, ' + name
    return result
  end


end
