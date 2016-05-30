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

def edit 
  @faq = Faq.find(params[:id])

end

def show
  @faq = Faq.find(params[:id])
end

def update
  @faq = Faq.find(params[:id])
  if @faq.user != current_user
    return render text: 'Not Allowed', status: :forbidden
  end
  @faq.update_attributes(faq_params)
  if @faq.valid?
  redirect_to faqs_path
else
  render :edit, status: :unprocessable_entity
end
end

def destroy
  @faq = Faq.find(params[:id])
  if @faq.user !=current_user
    return render text: 'Not Allowed', status: :forbidden
  end

  @faq.destroy
  redirect_to faqs_path
end

private

def faq_params

params.require(:faq).permit(:question,:answer)
end

end
