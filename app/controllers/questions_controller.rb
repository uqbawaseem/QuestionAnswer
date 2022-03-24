class QuestionsController < ApplicationController
  def question_filter_form
    $technologies = Technology.all
    @question = params[:questions]
  end
  def add_new_fields
    respond_to do |format|
        format.html {}
        format.js
    end
  end
  def question_print_page
    respond_to do |format|
        format.html {}
        format.js
    end
  end
end
