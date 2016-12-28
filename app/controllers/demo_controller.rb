class DemoController < ApplicationController
	 skip_before_filter :verify_authenticity_token  
  def index
  	@temp = Subject.all
  	render :json => @temp

  end

  def true
  	@temp = Subject.where(:visible => true)
  	render :json => @temp

  end
  def false
  	@temp = Subject.where(:visible => false)
  	@name = @temp[:name]
  	render :text => @name

  end
  def first
  	@temp = Subject.where(:name => "Initial Subject").first
  	@name = @temp[:name]
  	@position = @temp[:position]
  	render :json => @position.to_s + @name

  end
  def second
  	@temp = Subject.where(:name => "Next Subject")
  	render :text => @temp

  end
  def new
  	@subject= Subject.new(name: params[:name], position: params[:position])
  	if @subject.save
  		render(:text => 'made the entry')
  	else
  		render(:text => @subject.errors.messages)
	end  		

  end
  
  def other_hello
  	render template: "demo/index.html.erb"
  end	
end
