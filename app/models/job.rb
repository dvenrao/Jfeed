class Job < ActiveRecord::Base
  attr_accessible :ad_expires_on, :ad_posting_on, :company_name, :company_website, :contact_email, :contact_name, :contact_number, :experience, :location, :position, :qualification, :responsibility, :skill
  validates :company_name, :location, :position, :qualification, :presence => true


  def self.location_type
    [
     ['Hyderabad','hyderabad'],
     ['Bangalore','bangalore'],
     ['Chennai','chennai'],
     ['Pune','pune'],
     ['Delhi','delhi'],
     ['Pune','pune'],
     ['Haryana,Noida','haryana'],
     ['Cochin,Kerala','cochin'],
     ['Kochi,Kerala','kochi'],
     ['Gurgaon(New Delhi)','gurgaon'],
     ['Kolkatha','kolkatha'],
     ['Other City','other'],
     ['Across India','across_india']
    ]
  end


  def self.search(search)
    if search
      find(:all, :conditions => ['position LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end


end
