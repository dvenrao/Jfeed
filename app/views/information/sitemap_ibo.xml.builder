xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  xml.url do
    xml.loc "http://www.jobtar.com"
    xml.lastmod Date.today
    xml.changefreq "daily"
    xml.priority 0.5
  end


  @jobs.each do |post|
    xml.url do
      xml.loc "www.jobtar.com/jobs/#{post.id}-#{post.company_name.parameterize}-#{post.created_at.strftime('%d-%m-%Y')}"
      xml.lastmod post.updated_at.to_date
      xml.priority 0.9
    end
  end

end