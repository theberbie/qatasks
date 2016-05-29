class FaqsController < ApplicationController

def index
  @faq = Faq.all 
end

def new
  @faq = Faq.new
end


def create
current_user.faqs.create(faq_params)
redirect_to faqs_path

end


private

def faq_params

params.require(:faq).permit(:question,:answer)
end

end
