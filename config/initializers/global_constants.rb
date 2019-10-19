module GlobalConstants
  # also notice the call to 'freeze'
  CONF = YAML::load_file(Rails.root.join('config', 'configuracoes.yml'))[Rails.env]
end