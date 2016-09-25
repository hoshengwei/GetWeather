namespace :get_weather do
  desc "取得潮汐時間並創建本日報表(每天早上四點半執行)"
  task :tide => :environment do
    # 所需套件
    require 'rubygems'
    require 'mechanize'
    require "methods"

    # 創造一個Object來置入所要抓取的檔案_hourly
    agent = Mechanize.new

    # 抓取氣象局資料(每日即時天氣)
    url = "https://goyeah.tw/tidal/%E6%BE%8E%E6%B9%96%E7%B8%A3%E6%9C%9B%E5%AE%89%E9%84%89"
    doc = agent.get(url)
    headers = []
    doc.xpath('//*/table/thead/tr/th').each do |th|
      headers << th.text
    end
    # get table rows
    rows = []
    doc.xpath('//*/table/tbody/tr').each_with_index do |row, i|
      rows[i] = {}
      row.xpath('td').each_with_index do |td, j|
        rows[i][headers[j]] = td.text
      end
    end
    tide = []
    for i in 0..3
      temp = rows[i]["潮汐 "] + ": " + rows[i]["時間"]
      tide.append(temp)
    end

    get_time(3)
    id = @date.to_i
    Weatherr.create(id: id, tide: tide)
  end

  desc "抓取氣象局觀測資料前一日報表數據更新(每天下午三點執行也可手動執行更新)"
  task :update => :environment do
    require "methods"
    get_time(24)
    # update_weather_monthly_report(@year, @month, @day)
    update_weather_monthly_report
  end

  desc "抓取氣象局執行更新)"
  task :test => :environment do
    require "nokogiri"
    require 'open-uri'

    # url source
    url = "http://e-service.cwb.gov.tw/HistoryDataQuery/MonthDataController.do?command=viewMain&station=467300&stname=%25E6%259D%25B1%25E5%2590%2589%25E5%25B3%25B6&datepicker=2016-09"
    #parse

    doc1 = Nokogiri::HTML(open(url))
    puts doc1
  end
end
