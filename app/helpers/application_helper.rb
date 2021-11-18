module ApplicationHelper
    def show_patient(visit)
        
          "<p>Patient: #{visit.pat.fullname}</p>".html_safe
        
    end
end
