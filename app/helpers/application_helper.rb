module ApplicationHelper
  def show_patient(visit)
    "<p>Patient: #{visit.pat.fullname}</p>".html_safe
  end

  def show_category(user)
    if !user.category.nil?
      user.category.speciality
    else
      ' '
    end
  end
end
