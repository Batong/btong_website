class UsersController < ApplicationController
  before_filter :require_user, :except => [:new, :create]
  
  def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.haml
      format.xml  { render :xml => @users }
    end
  end
  
  def new
    @user = User.new
    
    respond_to do |format|
        format.html # 
        format.xml  { render :xml => @user }
    end
  end
  
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => "Thank you for signing up! You are now logged in.") }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end  
  end 
  
  def show
      @user = User.find(params[:id])

      respond_to do |format|
        format.html 
        format.xml  { render :xml => @user }
      end
  end

end