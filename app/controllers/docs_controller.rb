class DocsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
      if !params[:edit_id].blank?
      @doc_id = Doc.find(params[:edit_id])
      end
      #doc_type_id = DocType.find_by_doc_name(params[:doc_type])
    render file: Rails.public_path.join("features","editor.html.erb"), layout: false, :object => @doc_id, :user_type_id => params[:user_type_id] #, :doc_type_id => doc_type_id
    end

    def create_partial
      get_user = User.find(session[:current_user])
      get_doc =  DocType.find_by_doc_name(params[:doc_type])
      if !get_user.blank?
        object = Doc.new
        object.doc_headline = params[:doc_headline]
        object.doc_content = params[:doc_content]
        object.user_id = get_user.id
        object.doc_type_id = get_doc.id
        if get_user.user_type_id == 3
          object.doc_group_id = 1 # in doc_groups 2 = Vorlage
        else
          if !params[:choosed_value].blank?
            object.doc_group_id = 2 # Vorlage oder Eigene Docs bei lehrer
          else
            object.doc_group_id = 1 #Wenn nicht ausgewählt ist speichert er in eigene Dokumente
          end
        end
        object.save!
        session[:your_key] = object.id
        if get_user.user_type_id != 3
          choosed_classes = params[:choosed_value].split(",")
          choosed_classes.each do |value|
            value_id = ClassGroup.find(value).id
            object = ClassDoc.new
            object.doc_id = session[:your_key]
            object.class_id = value_id
            object.save
          end
        end
      else
        redirect_to :action => "login"
      end
      render file: "docs/show", layout: false, :object => object.id
end

  def update_partial
   get_user = User.find(session[:current_user])
   get_doc =  Doc.find(params[:doc_id])
   if !get_user.blank?
     object = get_doc
     object.doc_headline = params[:doc_headline]
     object.doc_content = params[:doc_content]
#     object.user_id = get_user.id
#     object.doc_type_id = get_doc.id
     object.save!
     session[:your_key] = object.id
#      params[:choosed_value].length.to_i.times do | value |
#        object = ClassDoc.new
#        object.doc_id = session[:your_key]
#        object.class_id = value
#        object.save
#      end

   else
    redirect_to :action => "login"
   end
  render :nothing => true, :status => 200, :content_type => 'text/html'
  end

  def show
    if !params[:choosed_doc].blank?
    session[:your_key] = params[:choosed_doc]
    @doc_id = Doc.find(session[:your_key])
     session[:your_key] = nil
     render file: "docs/show", layout: false, :object => @doc_id
   else
     render file: Rails.public_path.join("features","editor.html.erb"), layout: false
   end

  end

  def show_all
      @doc_id = params[:params]
      @doc_type = params[:doc_type]
     render file: 'docs/show_all'
  end
end
