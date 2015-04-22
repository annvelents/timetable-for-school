RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration


  config.included_models = ["Subject", "Teacher", "Group", "HoursAtWeek"]

  config.model "Subject" do
    list do
      field :id
      field :name
    end
  end

  config.model "Teacher" do
    list do
      field :id
      field :name
      field :subject
    end
  end

  config.model "Group" do
    list do
      field :name
      field :count_of_members
    end
  end

  config.model "HoursAtWeek" do
    list do
      field :id
      field :count_of_hours
      field :teacher
      field :group
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
