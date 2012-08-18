case Rails.env
when 'production'
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {:address => 'smtp.deliverhq.com', :domain => 'voupe.com', :authentication => :cram_md5, :user_name => 'xxxx', :password => 'xxxx'}
  # ActionMailer::Base.smtp_settings = {:address => 'smtp.postmarkapp.com', :domain => 'voupe.com', :authentication => :cram_md5, :user_name => 'xxxx', :password => 'xxxx'}
when 'development'
  ActionMailer::Base.delivery_method = :sendmail
end
