require_relative 'Task'

class Actions

  CREATE = 'create'
  READ   = 'show'
  UPDATE = 'update'
  DELETE = 'delete'

  def self.create
    priority, title, body = get_and_validates_task_parameters
    Task.new(
      priority: priority.to_i,
      title: title.strip,
      body: body.strip
    ).save
  end

  def self.read
    tasks = get_tasks
    index = 0
    tasks.each do |t|
      index += 1
      puts "Index: #{index} = #{t.to_s}"
    end
  end

  def self.update(index)
    unless index
      raise "Invalid index"
    end
    priority, title, body = get_and_validates_task_parameters
    tasks = get_tasks
    tasks.each_with_index do |t, i|
      if index.to_i == i + 1
        t.update(priority: priority, title: title, body: body)
        break
      end
    end
  end

  def self.delete(indexes)
    tasks = get_tasks
    tasks.each_with_index do |t, i|
      if indexes.include?((i + 1).to_s)
        t.destroy
      end
    end
  end

  private

    def self.get_tasks
      Task.order("priority asc, title asc, body asc")
    end

    def self.get_and_validates_task_parameters
      print "priority(1, 2, 3): "
      priority = STDIN.gets.chomp
      unless /[123]/ =~ priority
        raise "Invalid priority"
      end

      print "title: "
      title = STDIN.gets.chomp
      if title.strip == ""
        raise "Title should not be blank"
      end

      print "body: "
      body = STDIN.gets.chomp
      if body.strip == ""
        raise "Body should not be blank"
      end

      return priority, title, body
    end
end
