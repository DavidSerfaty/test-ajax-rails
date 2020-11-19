module ApplicationHelper

  def is_checked?(task)
    case task.check
      when true then "task-check"
      when false then ""
    end
  end

end
