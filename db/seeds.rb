# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

l1 = Logic.create(title: "用户注册")
l1.scenarios << Scenario.create(content: '校验用户名可用', position: 1)
l1.scenarios << Scenario.create(content: '填写用户信息', position: 2)
l1.scenarios << Scenario.create(content: '选择不同国家的products', position: 3)
l1.scenarios << Scenario.create(content: 'checkout', position: 4)

l2 = Logic.create(title: '用户登录')
l2.scenarios << Scenario.create(content: '填写账号密码', position: 1)
l2.scenarios << Scenario.create(content: '重复登录失败是否的校验', position: 2)
l2.scenarios << Scenario.create(content: '登录成功后角色判断及跳转', position: 3)
l2.scenarios << Scenario.create(content: '找回密码', position: 4)

l3 = Logic.create(title: 'checkout')
l3.scenarios << Scenario.create(content: 'order state', position: 1)
l3.scenarios << Scenario.create(content: 'payment state', position: 2)

