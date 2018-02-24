require_relative 'Task'

class Actions

  CREATE = 'create'
  READ   = 'show'
  UPDATE = 'update'
  DELETE = 'delete'

  def self.create
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

    Task.new(
      priority: priority.to_i,
      title: title.strip,
      body: body.strip
    ).save
  end

  def self.read
    tasks = Task.order("priority asc, title asc, body asc")
    index = 0
    tasks.each do |t|
      index += 1
      puts t.title
      puts "Index: #{index} =  #{t.to_s}"
    end
  end
end
