# encoding: utf-8

# RailsAdmin config file. Generated on November 19, 2014 11:47
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|


  ################  Global configuration  ################

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['Нижновтеплоэнерго', 'панель управления']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

#  config.included_models = ['Article', 'User', 'Vacancy', 'Message', 'Opinion', 'Country', 'State', 'City']

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_user } # auto-generated

  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method &:current_user

  # History
  # config.audit_with :history, User

  # Edit Post model
    config.model Page do

      label_plural "Страницы сайта"
      weight 1

      list do
        field :name do
          label "Название"
        end
        field :created_at do
          label "Дата создания"
        end
      end

      edit do
        include_all_fields
        field :name do
          label "Название"
        end
        
        field :file, :carrierwave

        exclude_fields :created_at, :text, :updated_at, :user_id
      end
    end

end
