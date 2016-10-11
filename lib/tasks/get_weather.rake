namespace :get_weather do
  desc "抓取氣象局觀測資料前一日報表數據更新(每天下午三點執行也可手動執行更新)"
  task :update => :environment do
    require "methods"
    get_time(24)
    update_weather_monthly_report(@year, @month, @day)

  end

  task :update1 => :environment do
    require "methods"
    get_time(48)
    update_weather_monthly_report(@year, @month, @day)

  end
  task :update2 => :environment do
    require "methods"
    get_time(72)
    update_weather_monthly_report(@year, @month, @day)

  end

end
