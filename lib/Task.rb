class Task < ActiveRecord::Base
  def to_s
    "Priority: #{priority}, Title: #{title}, Body: #{body}"
  end
end
