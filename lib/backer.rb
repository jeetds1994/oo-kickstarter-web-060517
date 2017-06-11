class Backer

  attr_accessor :name, :backed_projects, :backers

  def initialize(name)
    @name = name
    @backed_projects = []
    @backers = []
  end

  def back_project(project)
    @backed_projects << project
    comp_class = project
    comp_class.backers << self
    backers << comp_class
  end

end
