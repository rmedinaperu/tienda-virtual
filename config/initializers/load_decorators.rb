Rails.application.config.to_prepare do
  Dir.glob(Rails.root.join("app/models/**/*_decorator*.rb")).each do |c|
    require_dependency(c)
  end
end
