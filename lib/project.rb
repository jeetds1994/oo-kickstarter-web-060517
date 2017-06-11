class Project

  attr_accessor :backers, :title, :backed_projects

  def initialize(title)
    @title = title
    @backers = []
    @backed_projects = []
  end

  def add_backer(backer)
    @backers << backer
    comp_proj = backer
    comp_proj.backed_projects << self
    @backed_projects  << comp_proj
  end

end
