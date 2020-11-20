class Project 
    
    attr_accessor :title 

    def initialize(title)
        @title = title 
    end 
    
    def add_backer(backer)
        ProjectBacker.new(self, backer) 
    end

    def backers
      all_projects =  ProjectBacker.all.select do |project_backer|
            project_backer.project == self

        end 
        all_projects.map do |project|
            project.backer
        end 
    end 
end 