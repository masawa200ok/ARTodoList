require_relative 'Task'

class Actions

  CREATE = 'create'
  READ   = 'read'
  UPDATE = 'update'
  DELETE = 'delete'

  def self.create
    print "priority(1, 2, 3): "
    priority = STDIN.gets.chomp.to_i

    print "title: "
    title = STDIN.gets.chomp

    print "body: "
    body = STDIN.gets.chomp

    Task.new(
      priority: priority,
      title: title,
      body: body
    ).save
  end
end
