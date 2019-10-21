RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.main_app_name = ["Espaço Trate, Saúde Integrada"]

  config.excluded_models << "Rele"
  config.excluded_models << "User"
  config.excluded_models << "Newsletter"
  config.excluded_models << "Attachment"


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    show
    edit
    delete

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Artigo' do
    list do
      exclude_fields :created_at, :updated_at, :texto, :ativo
    end
  end

  config.model 'Attachment' do
    list do
      exclude_fields :created_at
    end
  end


  config.model 'Depoimento' do
    list do
      exclude_fields :created_at, :updated_at
    end
  end

  config.model 'Pessoa' do
    list do
      exclude_fields :created_at, :updated_at
    end
  end

  config.model 'Rele' do
    list do
      exclude_fields :created_at, :updated_at
    end
  end

end
