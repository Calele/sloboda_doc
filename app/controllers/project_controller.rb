class ProjectController < ApplicationController
  def projects
    @projects_all = Project.all
    @project_new = Project.new
    @clients_all = Client.all
    @managers_all = Manager.all
    @programmers_all = Programmer.all
    @statuses_all = Status.all
    @currencies_all = Currency.all
    @programmer_ids = Programmer.select("id")
    @programmer_last_names = Programmer.select("last_name")
  end

  def new

    new_project = Project.new
      new_project.client_id = params[:project][:client]
      new_project.currency_id = params[:project][:currency] 
      new_project.name = params[:project][:name] 
      new_project.manager_id = params[:project][:manager]  
      new_project.status_id = params[:project][:status] 
      new_project.date_of_start = params[:project][:date_of_start] 
      new_project.deadline = params[:project][:deadline]
      new_project.totally = params[:project][:totally] 
      new_project.paid = params[:project][:paid] 
      new_project.to_pay = params[:project][:to_pay] 
      new_project.comment = params[:project][:comment]

    new_project.save

    last_project = Project.last

    params[:project][:programmer_ids].each do |programmer_id|
      unless programmer_id == ""
        programmer_project = ProgrammerProject.new
        programmer_project.programmer_id = programmer_id
        programmer_project.project_id = last_project.id
        programmer_project.save
      end
    end
        # binding.pry
        render js: "location.reload();"
  end

end
