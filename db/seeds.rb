# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def write_case(content=nil, input=nil, output=nil)
  raise 'Content can not be blank' if content.nil?
  Case.create(content: content, input: input, output: output)
end

def write_scenario(content=nil)
  raise 'Content can not be blank' if content.nil?
  Scenario.create(content: content)
end

l1 = Logic.create(title: "用户注册")
l1.scenarios << write_scenario('校验用户名可用')
l1.scenarios << write_scenario('填写用户信息')
l1.scenarios << write_scenario('选择不同国家的products')
checkout_scenario = write_scenario('checkout')
l1.scenarios << checkout_scenario

l2 = Logic.create(title: '用户登录')
l2.scenarios << write_scenario('填写账号密码')
l2.scenarios << write_scenario('重复登录失败是否的校验')
l2.scenarios << write_scenario('登录成功后角色判断及跳转')
l2.scenarios << write_scenario('找回密码')

l3 = Logic.create(title: 'checkout')
l3.scenarios << checkout_scenario
l3.scenarios << write_scenario('order state')
l3.scenarios << write_scenario('payment state')

checkout_scenario.cases << write_case("列出Country Products", "user.sold_address.country_id", "显示Country Products")
checkout_scenario.cases << write_case("添加到cart", "Products ids", "cart显示Products name，价格")


l4 = Logic.create(title: "Products management", content: '系统管理Products。一、admin管理。二、User可根据国家查看Products List。')
  s1 = write_scenario('Products List')
  l4.scenarios << s1
  s1.cases << write_case('Normal List')
  s1.cases << write_case('Pagination List')
  s1.cases << write_case('Order by click title')

  ss1 = write_scenario('Product Search')
  s1.child_scenarios << ss1
    ss1.cases << write_case('search by name', "产品name", "产品列表")
    ss1.cases << write_case('search by sku')
    ss1.cases << write_case('show deleted in results')

s2 = write_scenario('Products Create')
l4.scenarios << s2

s3 = write_scenario('Products Edit')
l4.scenarios << s3

s4 = write_scenario('Products Delete')
l4.scenarios << s4

s5 = write_scenario('User List Products')
l4.scenarios << s5



