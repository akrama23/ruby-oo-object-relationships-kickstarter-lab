require 'pry'
class Backer 
    attr_accessor :name

    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
      the_project =   ProjectBacker.all.select do |project|
            # binding.pry
            project.backer == self

        end

        the_project.map do |project_backer|
            project_backer.project
        end 
    end

end 