class SecretDiary
  DEFAULT_STATUS = true

  attr_accessor :is_locked

  def initialize(status=DEFAULT_STATUS)
    @is_locked = status
  end
  
  def lock
    true
  end

  def unlock
    false
  end

  def add_entry
    raise "The Diary is locked!" if @is_locked == true
    ""
  end

  def get_entries
    raise "The Diary is locked!" if @is_locked == true
    []
  end
end