require 'rubygems'
require 'active_record'

require './lib/TableCreator'
require './lib/Task'
require './lib/Actions'

class ARTodoList

  def run
    db = "./db/data.sqlite3"
    ActiveRecord::Base.establish_connection(
      "adapter" => "sqlite3",
      "database" => db
    )

    TableCreator.create(db)

    action = ARGV[0]
    case action
    when Actions::CREATE
      Actions.create
    when Actions::READ
      puts "show"
    when Actions::UPDATE
      puts "update"
    when Actions::DELETE
      puts "delete"
    else
      syntax
    end

    puts "finish"

  end

  def syntax
    text = <<-EOS
      SYNTAX
        ruby ARTodoList.rb <action>

        <action>
          create
          read
          update
          delete
    EOS
    puts text
  end
end

ARTodoList.new.run
