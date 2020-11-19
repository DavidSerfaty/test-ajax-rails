module ApplicationHelper

  def is_checked?(task)
    case task.check
      when true then "task-check"
      when false then ""
    end
  end

  def read_icon?(email)
    case email.read
      when true then "fas fa-envelope-open bg-secondary"
      when false then "fas fa-envelope"
    end
  end

end
