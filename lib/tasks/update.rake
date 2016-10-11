desc "更新指定日期之氣象局觀測資料"
task :update, [:yy ,:mm, :dd] => :environment do | t, args|
  require "methods"
  @yy =  args[:yy].to_s
  @mm = args[:mm].to_s
  @dd = args[:dd].to_s
  update_weather_monthly_report(@yy, @mm, @dd)
end
