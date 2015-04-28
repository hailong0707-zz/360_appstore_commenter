# -*- coding: utf-8 -*-
require 'rubygems'
require 'watir-webdriver'

$url = "http://zhushou.360.cn/detail/index/soft_id/2946125?recrefer=SE_D_宝贝空间"

def run_once()
  browser = Watir::Browser.new(:chrome)
  browser.driver.manage.window.resize_to(200,200)
  browser.driver.manage.window.move_to(0,0)
  browser.goto $url

  points = browser.span :class => "s-1 js-votepanel"
  points.exists?
  points.hover

  sleep(5)
  fullstar = browser.a :class => "star-5"
  fullstar.click
  
  sleep(4)
  browser.close
  
end

for i in 0..100
   run_once()
   sleep(60)
end
