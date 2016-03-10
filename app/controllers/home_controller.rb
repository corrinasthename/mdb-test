class HomeController < ApplicationController
  
# title, training type, location, date(day

# STC sign in sheet: 
# Certification number, 
# certified hours, 
# date certified, 
# course title, 
# training provider, 
# telephone number, 
# instructors

  def index
    # db = Mdb.open("/Users/corrinasthename/Desktop/cs169/BCGC.mdb")
    # trainings = db[:tblTraining]
    type = @trainings.first[:Type]
    start_date = @trainings.first[:DateStart]
    end_date = @trainings.first[:DateEnd]
    location = "#{@trainings.first[:City]}"+", "+"{@trainings.first[:State]}"+"{@trainings.first[:ZipCode]}"

    output = "Training Data: #{@trainings.first}"
    output += "<br/><br/>"
    output += "Type: #{type}<br/><br/>"
    output += "Dates: #{@trainings.first[:DateStart]}, #{@trainings.first[:DateEnd]}"
    output += "<br/><br/>"
    output += "Location: #{@trainings.first[:City]}"+", "+"#{@trainings.first[:State]}"+" "+"#{@trainings.first[:ZipCode]}"
    render text: output
  end

  #grabbing methods for when you already have the specific training id and need
  #a certain attribute to fill in the template
  def cert_num
  	# training_id = params[:training_id]
  	db = Mdb.open("/Users/corrinasthename/Desktop/cs169/BCGC.mdb")
    trainings = db[:tblTraining]
  end

  def cert_hrs
  	# training_id = params[:training_id]
  	# @training.
  end

  def cert_date
  	# training_id = params[:training_id]
  	@training[training_id][:DateStart]
  end

  def course_title
  end

  def training_provider
  	#always OneCircleFoundation?
  end

  def telephone_number
  	#one circle's phone number
  end

  def instructors

  end

end