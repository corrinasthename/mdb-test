class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #create training table object available for all controllers
  before_filter :get_trainings
  def get_trainings
  	db = Mdb.open("/Users/corrinasthename/Desktop/cs169/BCGC.mdb")
    @trainings = db[:tblTraining]
    # @administration = Administration.first
  end
  # database = Mdb.open('/Users/corrinasthename/Desktop/cs169/BCGC.mdb')
  # training_orders = database[:tblOrders]
  # trainings = database[:tblTraining]

  # def index
  #   db = Mdb.open("/Users/corrinasthename/Desktop/cs169/BCGC.mdb")
  #   output = "Tables: #{db.tables}"
  #   output += "<br/><br/>"
  #   output += "Data: #{db[:tblOrders].first}"
  #   render text: output
  # end
end
