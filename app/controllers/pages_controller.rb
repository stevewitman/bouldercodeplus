class PagesController < ApplicationController
  def index
    puts "@@@@@@@@@@@@@@@@@"
    pp current_user

    base_uri = 'https://brilliant-fire-2881.firebaseio.com'

    firebase = Firebase::Client.new(base_uri)

    response = firebase.push("todos", { :name => 'Pick the milk', :priority => 1 })
    puts response

    # response = firebase.delete('/todos', '')
    # puts response
  end
end
