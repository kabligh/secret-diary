class SecretDiary

  attr_reader :locked, :entries

  def initialize
    @locked = true
    @entries = []
  end

  def lock
    @locked
  end

  def unlock
    @locked = false
  end

  def add_entry(message)
    raise "Diary locked. No access." if @locked == true
    @entries << message
  end

  def get_entries
    raise "Diary locked. No access." if @locked == true
    @entries.each { |entry| puts entry }
  end  

end
