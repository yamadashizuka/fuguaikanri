#encoding: UTF-8

class LogingateController < ApplicationController
  def signup
  end


def dosignup #ログインボタン押下
    name = params[:name]    #パラメータからユーザ名を取り出す
    pass = params[:pass]    #パラメータからパスワードを取り出す
    
    if !(name.nil?) then
       currentUser = User.where(:name => name).first
       if currentUser.nil? then
          puts '* not found *'
          render :action => 'register'
       elsif pass != currentUser.pass then
               puts '* password error *'
               render :text => 'パスワードが間違っています'
       else
               session[:currentUser] = currentUser
               render :action => 'welcome'
       end
    end
end

def register
    name = params[:name]
    pass = params[:pass]
    mail = params[:mail]
    
    currentUser = User.new()
    currentUser.name = name
    currentUser.pass = pass
    currentUser.mail = mail
    currentUser.save()
    
    session[:currentUser] = currentUser
    render :action => 'wellcome'
end
end
