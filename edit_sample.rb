#!/usr/bin/env ruby

require 'prawn'
require 'rmagick'
include Magick

def create_nc200(person)
  nc200 = ImageList.new("forms/png/nc200.png")
  text = Magick::Draw.new
  text.pointsize = 25

  # Add Dead Name 
  text.annotate(nc200, 0,0,240,280, person[:dead_name]) {
	  self.fill = 'black'
  }
  text.annotate(nc200, 0,0,400,370, person[:address]) {
	  self.fill = 'black'
  }
  text.annotate(nc200, 0,0,270,420, person[:city]) {
          self.fill = 'black'
  }
  text.annotate(nc200, 0,0,1150,420, person[:state]) {
          self.fill = 'black'
  }
  text.annotate(nc200, 0,0,450,670, person[:court_address]) {
          self.fill = 'black'
  }
  text.annotate(nc200, 0,0,450,765, person[:court_location]) {
          self.fill = 'black'
  }
  text.annotate(nc200, 0,0,450,810, person[:court_name]) {
          self.fill = 'black'
  }

  # Checkbox for male to female
  text.annotate(nc200, 0,0,320,1700, "x") {
          self.fill = 'black'
  }

  #Checkbox for female to male
 text.annotate(nc200, 0,0,320,1760, "x") {
          self.fill = 'black'
  }

  nc200.write("nc200_completed.png")

  puts "Writing: nc200_completed.png"
end

def create_nc110(person)
  nc110 = ImageList.new("forms/png/nc110.png")
  text = Magick::Draw.new
  text.pointsize = 25
  text.annotate(nc110, 0,0,385,240, person[:dead_name]) {
	  self.fill = 'black'
  }
  #Part 7 b
  text.annotate(nc110, 0,0,310,695, "x") {
          self.fill = 'black'
  }
  #7b1
  text.annotate(nc110, 0,0,760,740, person[:dead_name]) {
       self.fill = 'black'
  }
  #7b2
  text.annotate(nc110, 0,0,785,790, person[:real_name]) {
       self.fill = 'black'
  }
  #7b3
  text.annotate(nc110, 0,0,750,845, person[:dob]) {
       self.fill = 'black'
  }
  #7b3 and presently
  text.annotate(nc110, 0,0,1195,895, "x") {
       self.fill = 'black'
  }
  #7b4
  text.annotate(nc110, 0,0,750,945, person[:born]) {
       self.fill = 'black'
  }
  #7b5
  text.annotate(nc110, 0,0,1385,990, "x") {
       self.fill = 'black'
  }
  #7b6
  text.annotate(nc110, 0,0,1395,1040, person[:address]) {
       self.fill = 'black'
  }
  #7b6 city
  text.annotate(nc110, 0,0,600,1095, person[:city]) {
       self.fill = 'black'
  }
  #7b6 state
  text.annotate(nc110, 0,0,800,1095, person[:state]) {
       self.fill = 'black'
  }
  #7b6 zip
  text.annotate(nc110, 0,0,1000,1095, person[:zip]) {
       self.fill = 'black'
  }
  #7c
  text.annotate(nc110, 0,0,700,1200, "Better match for my identity") {
       self.fill = 'black'
  }
  #7d
  text.annotate(nc110, 0,0,385,1340, "x") {
       self.fill = 'black'
  }
  #Declaration_not not in prison or on parole
  text.annotate(nc110, 0,0,1580,1960, "x") {
       self.fill = 'black'
  }
  #Declaration_not a sex offender
  text.annotate(nc110, 0,0,1765,2005, "x") {
       self.fill = 'black'
  }
  #Declaration_print dead name
   text.annotate(nc110, 0,0,550,2410, person[:dead_name]) {
          self.fill = 'black'
  }
  #Petitioner sign
   text.annotate(nc110, 0,0,550,2920, person[:dead_name]) {
          self.fill = 'black'
  }

  nc110.write("nc110_completed.png")
  puts "Writing: nc110_completed.png"
end


  def create_cm010(person)
  cm010 = ImageList.new("forms/png/cm010.png")
  text = Magick::Draw.new
  text.pointsize = 25
  #Party without attorney dead_name
  text.annotate(cm010, 0,0,200,190, person[:dead_name]) {
         self.fill = 'black'
  }
  #Party without attorney address
   text.annotate(cm010, 0,0,200,220, person[:address]) {
         self.fill = 'black'
  }
  #Pary without city
   text.annotate(cm010, 0,0,200,250, person[:city]) {
         self.fill = 'black'
  }
  #Party without state
   text.annotate(cm010, 0,0,400,250, person[:state]) {
         self.fill = 'black'
  }
  #party without zip
   text.annotate(cm010, 0,0,600,250, person[:zip]) {
         self.fill = 'black'
  }
  #party without telephone
   text.annotate(cm010, 0,0,500,335, person[:telephone]) {
         self.fill = 'black'
  }
  #superior court address
   text.annotate(cm010, 0,0,500,470, person[:court_address]) {
         self.fill = 'black'
  }
  #superior court city
   text.annotate(cm010, 0,0,500,565, person[:court_location]) {
         self.fill = 'black'
  }
  #superior court name
   text.annotate(cm010, 0,0,500,615, person[:court_name]) {
         self.fill = 'black'
  }
  #civil case cover sheet_unlimited
   text.annotate(cm010, 0,0,195,815, "x") {
         self.fill = 'black'
  }
  #case type check box
   text.annotate(cm010, 0,0,1620,1955, "x") {
         self.fill = 'black'
  }
  #case not complex
  text.annotate(cm010, 0,0,635,2095, "x") {
         self.fill = 'black'
  }
  #3.remedies sought
  text.annotate(cm010, 0,0,955,2425, "x") {
         self.fill = 'black'
  }
  #5.not class action
  text.annotate(cm010, 0,0,635,2530, "x") {
         self.fill = 'black'
  }
  #print name next to signature
  text.annotate(cm010, 0,0,165,2700, person[:dead_name]) {
         self.fill = 'black'
  }




  cm010.write("cm010_completed.png")
  puts "Writing: cm010_completed.png"
  end


   def create_nc220(person)
   nc220 = ImageList.new("forms/png/nc220.png")
   text = Magick::Draw.new
   text.pointsize = 25
   #Petitioner info at the top
   text.annotate(nc220, 0,0,240,275, person[:dead_name]) {
          self.fill = 'black'
   }
   #petitioner address
  text.annotate(nc220, 0,0,410,375, person[:address]) {
          self.fill = 'black'
   }
  #petitioner city
  text.annotate(nc220, 0,0,235,420, person[:city]) {
          self.fill = 'black'
   }
  #petitioner state
  text.annotate(nc220, 0,0,1120,420, person[:state]) {
          self.fill = 'black'
   }
  #petitioner zip
  text.annotate(nc220, 0,0,1375,420, person[:zip]) {
          self.fill = 'black'
   }
  #petitioner phone
  text.annotate(nc220, 0,0,385,470, person[:telephone]) {
          self.fill = 'black'
   }
  #court address
  text.annotate(nc220, 0,0,430,670, person[:court_address]) {
          self.fill = 'black'
   }
  #court city
  text.annotate(nc220, 0,0,430,760, person[:court_location]) {
          self.fill = 'black'
   }
  #court name
  text.annotate(nc220, 0,0,430,810, person[:court_name]) {
          self.fill = 'black'
   }


   nc220.write("nc220_completed.png")
   puts "Writing: nc220_completed.png"
 end



  def create_nc230(person)
  nc230 = ImageList.new("forms/png/nc230.png")
  text = Magick::Draw.new
  text.pointsize = 25
  #petitioner info at top
  text.annotate(nc230, 0,0,240,220, person[:dead_name]) {
         self.fill = 'black'
  }
  #petitioner address
  text.annotate(nc230, 0,0,240,260, person[:address]) {
         self.fill = 'black'
  }
  #petitioner city
  text.annotate(nc230, 0,0,240,300, person[:city]) {
         self.fill = 'black'
  }
  #petitioner state
  text.annotate(nc230, 0,0,340,300, person[:state]) {
         self.fill = 'black'
  }
  #petitioner zip
  text.annotate(nc230, 0,0,440,300, person[:zip]) {
         self.fill = 'black'
  }
  #court info_address
  text.annotate(nc230, 0,0,525,635, person[:court_address]) {
         self.fill = 'black'
  }
  #court city
  text.annotate(nc230, 0,0,525,735, person[:court_location]) {
         self.fill = 'black'
  }
  #court name
  text.annotate(nc230, 0,0,525,785, person[:court_name]) {
         self.fill = 'black'
  }
  #The court finds 2b1
  text.annotate(nc230, 0,0,375,1385, "x") {
         self.fill = 'black'
  }
  #2b2
  text.annotate(nc230, 0,0,375,1435, "x") {
         self.fill = 'black'
  }
  #The court further orders
  text.annotate(nc230, 0,0,315,2335, "x") {
         self.fill = 'black'
  }










  nc230.write("nc230_completed.png")
  puts "Writing: nc230_completed.png"
  end






#  def create_nc200(person)
#  nc200 = ImageList.new("forms/png/nc200.png")
#  text = Magick::Draw.new
#  text.pointsize = 25
#  text.annotate(nc200, 0,0,240,275, person[:dead_name]) {
#         self.fill = 'black'
#  }
#  nc200.write("nc200_completed.png")
#  puts "Writing: nc200_completed.png"
#end









# def create_nc200(person)
#  nc200 = ImageList.new("forms/png/nc200.png")
#  text = Magick::Draw.new
#  text.pointsize = 25
#  text.annotate(nc200, 0,0,240,280, person[:dead_name]) {
#	  self.fill = 'black'
#  }
#  nc200.write("nc200_completed.png")
#  puts "Writing: nc200_completed.png"
#end


person = {
  real_gender: "female",
  dead_name: "Bryan Thomas Radulski",
  real_name: "Alice Marie Radulski",
  address: "345 W. 1st. St #96",
  city: "Tustin",
  state: "CA",
  zip: "92780",
  court_address: "700 Civic Center Dr. West",
  court_location: "Santa Ana, CA 92701",
  court_name: "Central Justice Center",
  dob: "02/28/90",
  born: "Riverside, CA",
  telephone: "(951) 206-1768", 
}

# create_nc200(person)
# create_nc110(person)
# create_cm010(person)
# create_nc220(person)
  create_nc230(person)
