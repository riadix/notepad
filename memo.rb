class Memo < Post
  def read_from_console
    puts "New note. Everything, until the word \"end\""
    @text = []
    line = nil

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_strings
    time_string = "Created at #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
    return @text.unshift(time_string) # добавляет в начало массива time_string
  end
end
