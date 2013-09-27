# coding: utf-8
class Inquiry < ActiveRecord::Base

 belongs_to :ctantom
 belongs_to :contact
 
  acts_as_paranoid

  belongs_to :contacts
  validates :receptiondate, :presence=> true
  validates :ctantom_id, :presence=> true
  validates :client, :presence=> true
  validates :title, :presence=> true  
  validates :deadline, :presence=> true
  validates :contact, :presence=> true
  validates :youken, :presence=> true
  validates :recontact, :presence=> true
  #validates :contact, :length=> (2..80)
  
  def jyokyo_color
  	text = jyokyo
    if jyokyo == "完了"
      text = "<font color =\"#0000ff\">" + jyokyo + "</font>"
    end
   
    return  text.html_safe 
   
    
  end

  def deadline_color
    
  	text = deadline.strftime("%Y年%m月%d日")
    if deadline < Time.now
      text = "<font color =\"#ff0000\">" + deadline.strftime("%Y年%m月%d日") + "</font>"
    end
   
    return  text.html_safe 
   
    
  end
  
end
