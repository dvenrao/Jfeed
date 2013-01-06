class InformationController < ApplicationController
  skip_before_filter :authorize

  def contact
  end

  def about
  end

  def sitemap_ibo
    @jobs=Job.all
  end

end
