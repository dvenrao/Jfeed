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

  def self.category
    [
      ["Select a Category"],
      ["Accounting / Auditing / Tax"],
      ["Administration / Secretary / Front Office"],
      ["Architecture / Civil Engineering"],
      ["Art / Design / Creative / Fashion"],
      ["Banking / Financial Services"],
      ["Construction"],
      ["Consulting / Strategy / Corporate Planning"],
      ["Content / Edition / Journalism"],
      ["Customer Service / Call Centre / Operations / Data Entry"],
      ["Education / Teaching / Language"],
      ["Engineering / R&amp;D"],
      ["Executive Management"],
      ["Freshers Jobs"],
      ["Healthcare / Medical / Pharmacy"],
      ["Hotel / Restaurant / Catering"],
      ["HR / Recruitment"],
      ["Import-Export / Merchandising / Trading"],
      ["Insurance"],
      ["Internet Technologies / Web / E-Commerce"],
      ["IT - Databases / Datawarehousing"],
      ["IT - ERP / CRM"],
      ["IT - Hardware / Telecom / Support"],
      ["IT - Project Management"],
      ["IT - Software Programming / Analysis"],
      ["IT - Systems / Networking / Security"],
      ["Legal / Law"],
      ["Logistics / Purchase / Supply Chain / Procurement"],
      ["Manufacturing / Packaging / Printing / Industrial Jobs"],
      ["Marketing / Communication / Advertising / PR"],
      ["Mechanical Engineering / Mechatronics"],
      ["Media / TV / Films / Production"],
      ["Pharma, Biotech and Chemical Industry"],
      ["Project Management"],
      ["Quality / Testing / Process Control"],
      ["Real Estate / Property"],
      ["Sales / Business Development"],
      ["Security Services / Guards"],
      ["Skilled Trade / Service / Installation / Repair"],
      ["Social Services / NGOs / Nonprofit"],
      ["Travel / Reservation / Airlines"]
    ]
  end


  def self.search(search)
    if search == "Fresher"
        find(:all, :conditions => ['experience LIKE ?', "%#{search}%"])
    else
        find(:all, :conditions => ['position LIKE ?', "%#{search}%"])
    end
  end


  def to_param
    "#{id}-#{company_name.parameterize}-#{created_at.strftime('%d-%m-%Y')}"
  end

end
