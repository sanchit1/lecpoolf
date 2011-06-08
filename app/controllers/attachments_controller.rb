class AttachmentsController < ApplicationController
def new
 @attachment=Attachment.new
end    


def show
        #@attachment = Attachment.find(params[:id])
       #send_data  @attachment.id, @attachment.data, :filename => @attachment.filename, :type => @attachment.content_type
    end

    def create      
        return if params[:attachment].blank?

        @attachment = Attachment.new
        @attachment.uploaded_file = params[:attachment]

        if @attachment.save
            flash[:notice] = "Thank you for your submission..."
            redirect_to :action => "show"
        else
            flash[:error] = "There was a problem submitting your attachment."
            render :action => :new
        end
    end
end

