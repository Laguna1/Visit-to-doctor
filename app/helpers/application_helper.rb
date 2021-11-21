module ApplicationHelper
  def show_patient(visit)
    "<p>Patient: #{visit.pat.fullname}</p>".html_safe
  end

  def show_role(user)
    if !user.role.nil?
      user.role.name
    else
      'The user`s role has not been assigned yet'
    end
  end

  def show_category(user)
    if !user.category.nil?
      user.category.speciality
    else
      ' '
    end
  end
end
