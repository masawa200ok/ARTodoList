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

    begin
      
      action = ARGV[0]
      case action
      when Actions::CREATE
        Actions.create
      when Actions::READ
        Actions.read(ARGV[1])
      when Actions::UPDATE
        Actions.update(ARGV[1])
      when Actions::DELETE
        Actions.delete(ARGV[1, ARGV.length - 1])
      else
        syntax
      end

    rescue => e
      puts "Message: #{e.message}"
    end

    puts "finish"

  end

  def syntax
    text = <<-EOS
      SYNTAX
        ruby ARTodoList.rb <action>

        <action>
          create
          show
          update <index>
          delete <indexes splited by space>
    EOS
    puts text
  end
end

ARTodoList.new.run
