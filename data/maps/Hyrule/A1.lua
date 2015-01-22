local map = ...
local game = map:get_game()
-- Debug Map

hero:set_walking_speed(90) -- Add this to very first map to get correct speed.

function map:on_started()

-- Define colors for Day/Night cycle - Day1
-- Start dawn fade Day1
self.day1_dawn01_overlay = sol.surface.create()
self.day1_dawn01_overlay:fill_color({0, 0, 64})
self.day1_dawn01_overlay:set_opacity(139)

self.day1_dawn02_overlay = sol.surface.create()
self.day1_dawn02_overlay:fill_color({0, 0, 64})
self.day1_dawn02_overlay:set_opacity(125)

self.day1_dawn03_overlay = sol.surface.create()
self.day1_dawn03_overlay:fill_color({0, 0, 64})
self.day1_dawn03_overlay:set_opacity(112)

self.day1_dawn04_overlay = sol.surface.create()
self.day1_dawn04_overlay:fill_color({30, 30, 49})
self.day1_dawn04_overlay:set_opacity(98)

self.day1_dawn05_overlay = sol.surface.create()
self.day1_dawn05_overlay:fill_color({69, 69, 30})
self.day1_dawn05_overlay:set_opacity(84)

self.day1_dawn06_overlay = sol.surface.create()
self.day1_dawn06_overlay:fill_color({108, 108, 10})
self.day1_dawn06_overlay:set_opacity(71)

self.day1_dawn07_overlay = sol.surface.create()
self.day1_dawn07_overlay:fill_color({133, 133, 0})
self.day1_dawn07_overlay:set_opacity(59)

self.day1_dawn08_overlay = sol.surface.create()
self.day1_dawn08_overlay:fill_color({143, 143, 0})
self.day1_dawn08_overlay:set_opacity(49)

self.day1_dawn09_overlay = sol.surface.create()
self.day1_dawn09_overlay:fill_color({153, 153, 0})
self.day1_dawn09_overlay:set_opacity(39)

self.day1_dawn10_overlay = sol.surface.create()
self.day1_dawn10_overlay:fill_color({162, 162, 0})
self.day1_dawn10_overlay:set_opacity(30)

self.day1_dawn11_overlay = sol.surface.create()
self.day1_dawn11_overlay:fill_color({172, 172, 0})
self.day1_dawn11_overlay:set_opacity(20)

self.day1_dawn12_overlay = sol.surface.create()
self.day1_dawn12_overlay:fill_color({182, 182, 0})
self.day1_dawn12_overlay:set_opacity(10)
-- End dawn fade Day1

self.day1_day_overlay = sol.surface.create()
self.day1_day_overlay:fill_color({0, 0, 0})
self.day1_day_overlay:set_opacity(0)

-- Start dusk fade Day1
self.day1_dusk01_overlay = sol.surface.create()
self.day1_dusk01_overlay:fill_color({182, 0, 0})
self.day1_dusk01_overlay:set_opacity(10)

self.day1_dusk02_overlay = sol.surface.create()
self.day1_dusk02_overlay:fill_color({172, 0, 0})
self.day1_dusk02_overlay:set_opacity(20)

self.day1_dusk03_overlay = sol.surface.create()
self.day1_dusk03_overlay:fill_color({162, 0, 0})
self.day1_dusk03_overlay:set_opacity(30)

self.day1_dusk04_overlay = sol.surface.create()
self.day1_dusk04_overlay:fill_color({153, 0, 0})
self.day1_dusk04_overlay:set_opacity(39)

self.day1_dusk05_overlay = sol.surface.create()
self.day1_dusk05_overlay:fill_color({143, 0, 0})
self.day1_dusk05_overlay:set_opacity(49)

self.day1_dusk06_overlay = sol.surface.create()
self.day1_dusk06_overlay:fill_color({133, 0, 0})
self.day1_dusk06_overlay:set_opacity(59)

self.day1_dusk07_overlay = sol.surface.create()
self.day1_dusk07_overlay:fill_color({108, 0, 10})
self.day1_dusk07_overlay:set_opacity(74)

self.day1_dusk08_overlay = sol.surface.create()
self.day1_dusk08_overlay:fill_color({69, 0, 30})
self.day1_dusk08_overlay:set_opacity(93)

self.day1_dusk09_overlay = sol.surface.create()
self.day1_dusk09_overlay:fill_color({30, 0, 49})
self.day1_dusk09_overlay:set_opacity(112)

self.day1_dusk10_overlay = sol.surface.create()
self.day1_dusk10_overlay:fill_color({0, 0, 64})
self.day1_dusk10_overlay:set_opacity(132)

self.day1_dusk11_overlay = sol.surface.create()
self.day1_dusk11_overlay:fill_color({0, 0, 64})
self.day1_dusk11_overlay:set_opacity(152)

self.day1_dusk12_overlay = sol.surface.create()
self.day1_dusk12_overlay:fill_color({0, 0, 64})
self.day1_dusk12_overlay:set_opacity(171)
-- End dusk fade Day1

self.day1_night_overlay = sol.surface.create()
self.day1_night_overlay:fill_color({0, 0, 64})
self.day1_night_overlay:set_opacity(191)
-- End of colors for Day/Night cycle - Day1

-- Define colors for Day/Night cycle - Day2 -------- Needs adjustments
-- Start dawn fade Day2
self.day2_dawn01_overlay = sol.surface.create()
self.day2_dawn01_overlay:fill_color({0, 0, 64})
self.day2_dawn01_overlay:set_opacity(171)

self.day2_dawn02_overlay = sol.surface.create()
self.day2_dawn02_overlay:fill_color({0, 0, 64})
self.day2_dawn02_overlay:set_opacity(152)

self.day2_dawn03_overlay = sol.surface.create()
self.day2_dawn03_overlay:fill_color({0, 0, 64})
self.day2_dawn03_overlay:set_opacity(132)

self.day2_dawn04_overlay = sol.surface.create()
self.day2_dawn04_overlay:fill_color({30, 30, 49})
self.day2_dawn04_overlay:set_opacity(112)

self.day2_dawn05_overlay = sol.surface.create()
self.day2_dawn05_overlay:fill_color({69, 69, 30})
self.day2_dawn05_overlay:set_opacity(93)

self.day2_dawn06_overlay = sol.surface.create()
self.day2_dawn06_overlay:fill_color({108, 108, 10})
self.day2_dawn06_overlay:set_opacity(74)

self.day2_dawn07_overlay = sol.surface.create()
self.day2_dawn07_overlay:fill_color({133, 133, 0})
self.day2_dawn07_overlay:set_opacity(59)

self.day2_dawn08_overlay = sol.surface.create()
self.day2_dawn08_overlay:fill_color({143, 143, 0})
self.day2_dawn08_overlay:set_opacity(49)

self.day2_dawn09_overlay = sol.surface.create()
self.day2_dawn09_overlay:fill_color({153, 153, 0})
self.day2_dawn09_overlay:set_opacity(39)

self.day2_dawn10_overlay = sol.surface.create()
self.day2_dawn10_overlay:fill_color({162, 162, 0})
self.day2_dawn10_overlay:set_opacity(30)

self.day2_dawn11_overlay = sol.surface.create()
self.day2_dawn11_overlay:fill_color({172, 172, 0})
self.day2_dawn11_overlay:set_opacity(20)

self.day2_dawn12_overlay = sol.surface.create()
self.day2_dawn12_overlay:fill_color({182, 182, 0})
self.day2_dawn12_overlay:set_opacity(10)
-- End dawn fade Day2

self.day2_day_overlay = sol.surface.create()
self.day2_day_overlay:fill_color({0, 0, 0})
self.day2_day_overlay:set_opacity(0)

-- Start dusk fade Day2
self.day2_dusk01_overlay = sol.surface.create()
self.day2_dusk01_overlay:fill_color({182, 0, 0})
self.day2_dusk01_overlay:set_opacity(10)

self.day2_dusk02_overlay = sol.surface.create()
self.day2_dusk02_overlay:fill_color({172, 0, 0})
self.day2_dusk02_overlay:set_opacity(20)

self.day2_dusk03_overlay = sol.surface.create()
self.day2_dusk03_overlay:fill_color({162, 0, 0})
self.day2_dusk03_overlay:set_opacity(30)

self.day2_dusk04_overlay = sol.surface.create()
self.day2_dusk04_overlay:fill_color({153, 0, 0})
self.day2_dusk04_overlay:set_opacity(39)

self.day2_dusk05_overlay = sol.surface.create()
self.day2_dusk05_overlay:fill_color({143, 0, 0})
self.day2_dusk05_overlay:set_opacity(49)

self.day2_dusk06_overlay = sol.surface.create()
self.day2_dusk06_overlay:fill_color({133, 0, 0})
self.day2_dusk06_overlay:set_opacity(59)

self.day2_dusk07_overlay = sol.surface.create()
self.day2_dusk07_overlay:fill_color({108, 0, 10})
self.day2_dusk07_overlay:set_opacity(77)

self.day2_dusk08_overlay = sol.surface.create()
self.day2_dusk08_overlay:fill_color({69, 0, 30})
self.day2_dusk08_overlay:set_opacity(102)

self.day2_dusk09_overlay = sol.surface.create()
self.day2_dusk09_overlay:fill_color({30, 0, 49})
self.day2_dusk09_overlay:set_opacity(128)

self.day2_dusk10_overlay = sol.surface.create()
self.day2_dusk10_overlay:fill_color({0, 0, 64})
self.day2_dusk10_overlay:set_opacity(153)

self.day2_dusk11_overlay = sol.surface.create()
self.day2_dusk11_overlay:fill_color({0, 0, 64})
self.day2_dusk11_overlay:set_opacity(179)

self.day2_dusk12_overlay = sol.surface.create()
self.day2_dusk12_overlay:fill_color({0, 0, 64})
self.day2_dusk12_overlay:set_opacity(204)
-- End dusk fade Day2

self.day2_night_overlay = sol.surface.create()
self.day2_night_overlay:fill_color({0, 0, 64})
self.day2_night_overlay:set_opacity(230)
-- End of colors for Day/Night cycle - Day2

-- Define colors for Day/Night cycle - Day3 -------- Needs adjustments
-- Start dawn fade Day3
self.day3_dawn01_overlay = sol.surface.create()
self.day3_dawn01_overlay:fill_color({0, 0, 64})
self.day3_dawn01_overlay:set_opacity(204)

self.day3_dawn02_overlay = sol.surface.create()
self.day3_dawn02_overlay:fill_color({0, 0, 64})
self.day3_dawn02_overlay:set_opacity(179)

self.day3_dawn03_overlay = sol.surface.create()
self.day3_dawn03_overlay:fill_color({0, 0, 64})
self.day3_dawn03_overlay:set_opacity(153)

self.day3_dawn04_overlay = sol.surface.create()
self.day3_dawn04_overlay:fill_color({30, 30, 49})
self.day3_dawn04_overlay:set_opacity(128)

self.day3_dawn05_overlay = sol.surface.create()
self.day3_dawn05_overlay:fill_color({69, 69, 30})
self.day3_dawn05_overlay:set_opacity(102)

self.day3_dawn06_overlay = sol.surface.create()
self.day3_dawn06_overlay:fill_color({108, 108, 10})
self.day3_dawn06_overlay:set_opacity(77)

self.day3_dawn07_overlay = sol.surface.create()
self.day3_dawn07_overlay:fill_color({133, 133, 0})
self.day3_dawn07_overlay:set_opacity(59)

self.day3_dawn08_overlay = sol.surface.create()
self.day3_dawn08_overlay:fill_color({143, 143, 0})
self.day3_dawn08_overlay:set_opacity(49)

self.day3_dawn09_overlay = sol.surface.create()
self.day3_dawn09_overlay:fill_color({153, 153, 0})
self.day3_dawn09_overlay:set_opacity(39)

self.day3_dawn10_overlay = sol.surface.create()
self.day3_dawn10_overlay:fill_color({162, 162, 0})
self.day3_dawn10_overlay:set_opacity(30)

self.day3_dawn11_overlay = sol.surface.create()
self.day3_dawn11_overlay:fill_color({172, 172, 0})
self.day3_dawn11_overlay:set_opacity(20)

self.day3_dawn12_overlay = sol.surface.create()
self.day3_dawn12_overlay:fill_color({182, 182, 0})
self.day3_dawn12_overlay:set_opacity(10)
-- End dawn fade Day3

self.day3_day_overlay = sol.surface.create()
self.day3_day_overlay:fill_color({0, 0, 0})
self.day3_day_overlay:set_opacity(0)

-- Start dusk fade Day3
self.day3_dusk01_overlay = sol.surface.create()
self.day3_dusk01_overlay:fill_color({182, 0, 0})
self.day3_dusk01_overlay:set_opacity(10)

self.day3_dusk02_overlay = sol.surface.create()
self.day3_dusk02_overlay:fill_color({172, 0, 0})
self.day3_dusk02_overlay:set_opacity(20)

self.day3_dusk03_overlay = sol.surface.create()
self.day3_dusk03_overlay:fill_color({162, 0, 0})
self.day3_dusk03_overlay:set_opacity(30)

self.day3_dusk04_overlay = sol.surface.create()
self.day3_dusk04_overlay:fill_color({153, 0, 0})
self.day3_dusk04_overlay:set_opacity(39)

self.day3_dusk05_overlay = sol.surface.create()
self.day3_dusk05_overlay:fill_color({143, 0, 0})
self.day3_dusk05_overlay:set_opacity(49)

self.day3_dusk06_overlay = sol.surface.create()
self.day3_dusk06_overlay:fill_color({133, 0, 0})
self.day3_dusk06_overlay:set_opacity(59)

self.day3_dusk07_overlay = sol.surface.create()
self.day3_dusk07_overlay:fill_color({108, 0, 10})
self.day3_dusk07_overlay:set_opacity(74)

self.day3_dusk08_overlay = sol.surface.create()
self.day3_dusk08_overlay:fill_color({69, 0, 30})
self.day3_dusk08_overlay:set_opacity(93)

self.day3_dusk09_overlay = sol.surface.create()
self.day3_dusk09_overlay:fill_color({30, 0, 49})
self.day3_dusk09_overlay:set_opacity(112)

self.day3_dusk10_overlay = sol.surface.create()
self.day3_dusk10_overlay:fill_color({0, 0, 64})
self.day3_dusk10_overlay:set_opacity(132)

self.day3_dusk11_overlay = sol.surface.create()
self.day3_dusk11_overlay:fill_color({0, 0, 64})
self.day3_dusk11_overlay:set_opacity(152)

self.day3_dusk12_overlay = sol.surface.create()
self.day3_dusk12_overlay:fill_color({0, 0, 64})
self.day3_dusk12_overlay:set_opacity(171)
-- End dusk fade Day3

self.day3_night_overlay = sol.surface.create()
self.day3_night_overlay:fill_color({0, 0, 64})
self.day3_night_overlay:set_opacity(191)
-- End of colors for Day/Night cycle - Day3

-- Define colors for Day/Night cycle - Day4 -------- Needs adjustments
-- Start dawn fade Day4
self.day4_dawn01_overlay = sol.surface.create()
self.day4_dawn01_overlay:fill_color({0, 0, 64})
self.day4_dawn01_overlay:set_opacity(171)

self.day4_dawn02_overlay = sol.surface.create()
self.day4_dawn02_overlay:fill_color({0, 0, 64})
self.day4_dawn02_overlay:set_opacity(152)

self.day4_dawn03_overlay = sol.surface.create()
self.day4_dawn03_overlay:fill_color({0, 0, 64})
self.day4_dawn03_overlay:set_opacity(132)

self.day4_dawn04_overlay = sol.surface.create()
self.day4_dawn04_overlay:fill_color({30, 30, 49})
self.day4_dawn04_overlay:set_opacity(112)

self.day4_dawn05_overlay = sol.surface.create()
self.day4_dawn05_overlay:fill_color({69, 69, 30})
self.day4_dawn05_overlay:set_opacity(93)

self.day4_dawn06_overlay = sol.surface.create()
self.day4_dawn06_overlay:fill_color({108, 108, 10})
self.day4_dawn06_overlay:set_opacity(74)

self.day4_dawn07_overlay = sol.surface.create()
self.day4_dawn07_overlay:fill_color({133, 133, 0})
self.day4_dawn07_overlay:set_opacity(59)

self.day4_dawn08_overlay = sol.surface.create()
self.day4_dawn08_overlay:fill_color({143, 143, 0})
self.day4_dawn08_overlay:set_opacity(49)

self.day4_dawn09_overlay = sol.surface.create()
self.day4_dawn09_overlay:fill_color({153, 153, 0})
self.day4_dawn09_overlay:set_opacity(39)

self.day4_dawn10_overlay = sol.surface.create()
self.day4_dawn10_overlay:fill_color({162, 162, 0})
self.day4_dawn10_overlay:set_opacity(30)

self.day4_dawn11_overlay = sol.surface.create()
self.day4_dawn11_overlay:fill_color({172, 172, 0})
self.day4_dawn11_overlay:set_opacity(20)

self.day4_dawn12_overlay = sol.surface.create()
self.day4_dawn12_overlay:fill_color({182, 182, 0})
self.day4_dawn12_overlay:set_opacity(10)
-- End dawn fade Day4

self.day4_day_overlay = sol.surface.create()
self.day4_day_overlay:fill_color({0, 0, 0})
self.day4_day_overlay:set_opacity(0)

-- Start dusk fade Day4
self.day4_dusk01_overlay = sol.surface.create()
self.day4_dusk01_overlay:fill_color({182, 0, 0})
self.day4_dusk01_overlay:set_opacity(10)

self.day4_dusk02_overlay = sol.surface.create()
self.day4_dusk02_overlay:fill_color({172, 0, 0})
self.day4_dusk02_overlay:set_opacity(20)

self.day4_dusk03_overlay = sol.surface.create()
self.day4_dusk03_overlay:fill_color({162, 0, 0})
self.day4_dusk03_overlay:set_opacity(30)

self.day4_dusk04_overlay = sol.surface.create()
self.day4_dusk04_overlay:fill_color({153, 0, 0})
self.day4_dusk04_overlay:set_opacity(39)

self.day4_dusk05_overlay = sol.surface.create()
self.day4_dusk05_overlay:fill_color({143, 0, 0})
self.day4_dusk05_overlay:set_opacity(49)

self.day4_dusk06_overlay = sol.surface.create()
self.day4_dusk06_overlay:fill_color({133, 0, 0})
self.day4_dusk06_overlay:set_opacity(59)

self.day4_dusk07_overlay = sol.surface.create()
self.day4_dusk07_overlay:fill_color({108, 0, 10})
self.day4_dusk07_overlay:set_opacity(71)

self.day4_dusk08_overlay = sol.surface.create()
self.day4_dusk08_overlay:fill_color({69, 0, 30})
self.day4_dusk08_overlay:set_opacity(84)

self.day4_dusk09_overlay = sol.surface.create()
self.day4_dusk09_overlay:fill_color({30, 0, 49})
self.day4_dusk09_overlay:set_opacity(98)

self.day4_dusk10_overlay = sol.surface.create()
self.day4_dusk10_overlay:fill_color({0, 0, 64})
self.day4_dusk10_overlay:set_opacity(112)

self.day4_dusk11_overlay = sol.surface.create()
self.day4_dusk11_overlay:fill_color({0, 0, 64})
self.day4_dusk11_overlay:set_opacity(125)

self.day4_dusk12_overlay = sol.surface.create()
self.day4_dusk12_overlay:fill_color({0, 0, 64})
self.day4_dusk12_overlay:set_opacity(139)
-- End dusk fade Day4

self.day4_night_overlay = sol.surface.create()
self.day4_night_overlay:fill_color({0, 0, 64})
self.day4_night_overlay:set_opacity(153)
-- End of colors for Day/Night cycle - Day4


-- Define map timer
map_timer = sol.timer.start(map, 1, function() --1ms is the true value 1000 is for testing sound
--      sol.audio.play_sound("timer")
	    num_calls = num_calls + 1
	if num_calls == 0 -- day1_Dawn_6:00AM
		then function map:on_draw(dst_surface)
					self.day1_dawn01_overlay:draw(dst_surface)
					game:set_value("time", 10600)
						return true
							end
	elseif num_calls == 8333 -- day1_Dawn_6:10AM -- 8333.333333333333
		then function map:on_draw(dst_surface)
					self.day1_dawn02_overlay:draw(dst_surface)
					game:set_value("time", 10610)
						return true
							end
	elseif num_calls == 16666 -- day1_Dawn_6:20AM -- 16666.66666666666
		then function map:on_draw(dst_surface)
					self.day1_dawn03_overlay:draw(dst_surface)
					game:set_value("time", 10620)
						return true
							end
	elseif num_calls == 25000 -- day1_Dawn_6:30AM -- 25000
		then function map:on_draw(dst_surface)
					self.day1_dawn04_overlay:draw(dst_surface)
					game:set_value("time", 10630)
						return true
							end
	elseif num_calls == 33333 -- day1_Dawn_6:40AM -- 33333.33333333333
		then function map:on_draw(dst_surface)
					self.day1_dawn05_overlay:draw(dst_surface)
					game:set_value("time", 10640)
						return true
							end
	elseif num_calls == 41666 -- day1_Dawn_6:50AM -- 41666.66666666666
		then function map:on_draw(dst_surface)
					self.day1_dawn06_overlay:draw(dst_surface)
					game:set_value("time", 10650)
						return true
							end
	elseif num_calls == 50000 -- day1_Dawn_7:00AM -- 50000
		then function map:on_draw(dst_surface)
					self.day1_dawn07_overlay:draw(dst_surface)
					game:set_value("time", 10700)
						return true
							end
	elseif num_calls == 58333 -- day1_Dawn_7:10AM -- 58333.33333333333
		then function map:on_draw(dst_surface)
					self.day1_dawn08_overlay:draw(dst_surface)
					game:set_value("time", 10710)
						return true
							end
	elseif num_calls == 66666 -- day1_Dawn_7:20AM -- 66666.66666666666
		then function map:on_draw(dst_surface)
					self.day1_dawn09_overlay:draw(dst_surface)
					game:set_value("time", 10720)
						return true
							end
	elseif num_calls == 75000 -- day1_Dawn_7:30AM -- 75000
		then function map:on_draw(dst_surface)
					self.day1_dawn10_overlay:draw(dst_surface)
					game:set_value("time", 10730)
						return true
							end
	elseif num_calls == 83333 -- day1_Dawn_7:40AM -- 83333.33333333333
		then function map:on_draw(dst_surface)
					self.day1_dawn11_overlay:draw(dst_surface)
					game:set_value("time", 10740)
						return true
							end
	elseif num_calls == 91666 -- day1_Dawn_7:50AM -- 91666.66666666666
		then function map:on_draw(dst_surface)
					self.day1_dawn12_overlay:draw(dst_surface)
					game:set_value("time", 10750)
						return true
							end
	elseif num_calls == 100000 -- day1_Day_8:00AM -- 100000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 10800)
						return true
							end
	elseif num_calls == 108333 -- day1_Day_8:10AM -- 108333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 10810)
						return true
							end
	elseif num_calls == 116666 -- day1_Day_8:20AM -- 116666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 10820)
						return true
							end
	elseif num_calls == 125000 -- day1_Day_8:30AM -- 125000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 10830)
						return true
							end
	elseif num_calls == 133333 -- day1_Day_8:40AM -- 133333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 10840)
						return true
							end
	elseif num_calls == 141666 -- day1_Day_8:50AM -- 141666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 10850)
						return true
							end
	elseif num_calls == 150000 -- day1_Day_9:00AM -- 150000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 10900)
						return true
							end
	elseif num_calls == 158333 -- day1_Day_9:10AM -- 158333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 10910)
						return true
							end
	elseif num_calls == 166666 -- day1_Day_9:20AM -- 166666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 10920)
						return true
							end
	elseif num_calls == 175000 -- day1_Day_9:30AM -- 175000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 10930)
						return true
							end
	elseif num_calls == 183333 -- day1_Day_9:40AM -- 183333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 10940)
						return true
							end
	elseif num_calls == 191666 -- day1_Day_9:50AM -- 191666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 10950)
						return true
							end
	elseif num_calls == 200000 -- day1_Day_10:00AM -- 200000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11000)
						return true
							end
	elseif num_calls == 208333 -- day1_Day_10:10AM -- 208333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11010)
						return true
							end
	elseif num_calls == 216666 -- day1_Day_10:20AM -- 216666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11020)
						return true
							end
	elseif num_calls == 225000 -- day1_Day_10:30AM -- 225000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11030)
						return true
							end
	elseif num_calls == 233333 -- day1_Day_10:40AM -- 233333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11040)
						return true
							end
	elseif num_calls == 241666 -- day1_Day_10:50AM -- 241666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11050)
						return true
							end
	elseif num_calls == 250000 -- day1_Day_11:00AM -- 250000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11100)
						return true
							end
	elseif num_calls == 258333 -- day1_Day_11:10AM -- 258333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11110)
						return true
							end
	elseif num_calls == 266666 -- day1_Day_11:20AM -- 266666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11120)
						return true
							end
	elseif num_calls == 275000 -- day1_Day_11:30AM -- 275000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11130)
						return true
							end
	elseif num_calls == 283333 -- day1_Day_11:40AM -- 283333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11140)
						return true
							end
	elseif num_calls == 291666 -- day1_Day_11:50AM -- 291666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11150)
						return true
							end
	elseif num_calls == 300000 -- day1_Day_12:00PM -- 300000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11200)
						return true
							end
	elseif num_calls == 308333 -- day1_Day_12:10PM -- 308333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11210)
						return true
							end
	elseif num_calls == 316666 -- day1_Day_12:20PM -- 316666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11220)
						return true
							end
	elseif num_calls == 325000 -- day1_Day_12:30PM -- 325000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11230)
						return true
							end
	elseif num_calls == 333333 -- day1_Day_12:40PM -- 333333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11240)
						return true
							end
	elseif num_calls == 341666 -- day1_Day_12:50PM -- 341666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11250)
						return true
							end
	elseif num_calls == 350000 -- day1_Day_1:00PM -- 350000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11300)
						return true
							end
	elseif num_calls == 358333 -- day1_Day_1:10PM -- 358333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11310)
						return true
							end
	elseif num_calls == 366666 -- day1_Day_1:20PM -- 366666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11320)
						return true
							end
	elseif num_calls == 375000 -- day1_Day_1:30PM -- 375000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11330)
						return true
							end
	elseif num_calls == 383333 -- day1_Day_1:40PM -- 383333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11340)
						return true
							end
	elseif num_calls == 391666 -- day1_Day_1:50PM -- 391666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11350)
						return true
							end
	elseif num_calls == 400000 -- day1_Day_2:00PM -- 400000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11400)
						return true
							end
	elseif num_calls == 408333 -- day1_Day_2:10PM -- 408333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11410)
						return true
							end
	elseif num_calls == 416666 -- day1_Day_2:20PM -- 416666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11420)
						return true
							end
	elseif num_calls == 425000 -- day1_Day_2:30PM -- 425000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11430)
						return true
							end
	elseif num_calls == 433333 -- day1_Day_2:40PM -- 433333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11440)
						return true
							end
	elseif num_calls == 441666 -- day1_Day_2:50PM -- 441666.6666666666
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11450)
						return true
							end
	elseif num_calls == 450000 -- day1_Day_3:00PM -- 450000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11500)
						return true
							end
	elseif num_calls == 458333 -- day1_Day_3:10PM -- 458333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11510)
						return true
							end
	elseif num_calls == 466666 -- day1_Day_3:20PM -- 466666.6666666666
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11520)
						return true
							end
	elseif num_calls == 475000 -- day1_Day_3:30PM -- 475000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11530)
						return true
							end
	elseif num_calls == 483333 -- day1_Day_3:40PM -- 483333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11540)
						return true
							end
	elseif num_calls == 491666 -- day1_Day_3:50PM -- 491666.6666666666
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11550)
						return true
							end
	elseif num_calls == 500000 -- day1_Day_4:00PM -- 500000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11600)
						return true
							end
	elseif num_calls == 508333 -- day1_Day_4:10PM -- 508333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11610)
						return true
							end
	elseif num_calls == 516666 -- day1_Day_4:20PM -- 516666.6666666666
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11620)
						return true
							end
	elseif num_calls == 525000 -- day1_Day_4:30PM -- 525000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11630)
						return true
							end
	elseif num_calls == 533333 -- day1_Day_4:40PM -- 533333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11640)
						return true
							end
	elseif num_calls == 541666 -- day1_Day_4:50PM -- 541666.6666666666
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11650)
						return true
							end
	elseif num_calls == 550000 -- day1_Day_5:00PM -- 550000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11700)
						return true
							end
	elseif num_calls == 558333 -- day1_Day_5:10PM -- 558333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11710)
						return true
							end
	elseif num_calls == 566666 -- day1_Day_5:20PM -- 566666.6666666666
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11720)
						return true
							end
	elseif num_calls == 575000 -- day1_Day_5:30PM -- 575000
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11730)
						return true
							end
	elseif num_calls == 583333 -- day1_Day_5:40PM -- 583333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11740)
						return true
							end
	elseif num_calls == 591666 -- day1_Day_5:50PM -- 591666.6666666666
		then function map:on_draw(dst_surface)
					self.day1_day_overlay:draw(dst_surface)
					game:set_value("time", 11750)
						return true
							end
	elseif num_calls == 600000 -- day1_Dusk_6:00PM -- 600000
		then function map:on_draw(dst_surface)
					self.day1_dusk01_overlay:draw(dst_surface)
					game:set_value("time", 11800)
						return true
							end
	elseif num_calls == 608333 -- day1_Dusk_6:10PM -- 608333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_dusk02_overlay:draw(dst_surface)
					game:set_value("time", 11810)
						return true
							end
	elseif num_calls == 616666 -- day1_Dusk_6:20PM -- 616666.66666666666
		then function map:on_draw(dst_surface)
					self.day1_dusk03_overlay:draw(dst_surface)
					game:set_value("time", 11820)
						return true
							end
	elseif num_calls == 625000 -- day1_Dusk_6:30PM -- 625000
		then function map:on_draw(dst_surface)
					self.day1_dusk04_overlay:draw(dst_surface)
					game:set_value("time", 11830)
						return true
							end
	elseif num_calls == 633333 -- day1_Dusk_6:40PM -- 633333.33333333333
		then function map:on_draw(dst_surface)
					self.day1_dusk05_overlay:draw(dst_surface)
					game:set_value("time", 11840)
						return true
							end
	elseif num_calls == 641666 -- day1_Dusk_6:50PM -- 641666.66666666666
		then function map:on_draw(dst_surface)
					self.day1_dusk06_overlay:draw(dst_surface)
					game:set_value("time", 11850)
						return true
							end
	elseif num_calls == 650000 -- day1_Dusk_7:00PM -- 650000
		then function map:on_draw(dst_surface)
					self.day1_dusk07_overlay:draw(dst_surface)
					game:set_value("time", 11900)
						return true
							end
	elseif num_calls == 658333 -- day1_Dusk_7:10PM -- 658333.33333333333
		then function map:on_draw(dst_surface)
					self.day1_dusk08_overlay:draw(dst_surface)
					game:set_value("time", 11910)
						return true
							end
	elseif num_calls == 666666 -- day1_Dusk_7:20PM -- 666666.66666666666
		then function map:on_draw(dst_surface)
					self.day1_dusk09_overlay:draw(dst_surface)
					game:set_value("time", 11920)
						return true
							end
	elseif num_calls == 675000 -- day1_Dusk_7:30PM -- 675000
		then function map:on_draw(dst_surface)
					self.day1_dusk10_overlay:draw(dst_surface)
					game:set_value("time", 11930)
						return true
							end
	elseif num_calls == 683333 -- day1_Dusk_7:40PM -- 683333.33333333333
		then function map:on_draw(dst_surface)
					self.day1_dusk11_overlay:draw(dst_surface)
					game:set_value("time", 11940)
						return true
							end
	elseif num_calls == 691666 -- day1_Dusk_7:50PM -- 691666.66666666666
		then function map:on_draw(dst_surface)
					self.day1_dusk12_overlay:draw(dst_surface)
					game:set_value("time", 11950)
						return true
							end
	elseif num_calls == 700000 -- day1_Night_8:00PM -- 7000000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12000)
						return true
							end
	elseif num_calls == 708333 -- day1_Night_8:10PM -- 7008333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12010)
						return true
							end
	elseif num_calls == 716666 -- day1_Night_8:20PM -- 716666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12020)
						return true
							end
	elseif num_calls == 725000 -- day1_Night_8:30PM -- 725000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12030)
						return true
							end
	elseif num_calls == 733333 -- day1_Night_8:40PM -- 733333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12040)
						return true
							end
	elseif num_calls == 741666 -- day1_Night_8:50PM -- 741666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12050)
						return true
							end
	elseif num_calls == 750000 -- day1_Night_9:00PM -- 750000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12100)
						return true
							end
	elseif num_calls == 758333 -- day1_Night_9:10PM -- 758333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12110)
						return true
							end
	elseif num_calls == 766666 -- day1_Night_9:20PM -- 766666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12120)
						return true
							end
	elseif num_calls == 775000 -- day1_Night_9:30PM -- 775000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12130)
						return true
							end
	elseif num_calls == 783333 -- day1_Night_9:40PM -- 783333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12140)
						return true
							end
	elseif num_calls == 791666 -- day1_Night_9:50PM -- 791666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12150)
						return true
							end
	elseif num_calls == 800000 -- day1_Night_10:00PM -- 800000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12200)
						return true
							end
	elseif num_calls == 808333 -- day1_Night_10:10PM -- 808333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12210)
						return true
							end
	elseif num_calls == 816666 -- day1_Night_10:20PM -- 816666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12220)
						return true
							end
	elseif num_calls == 825000 -- day1_Night_10:30PM -- 825000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12230)
						return true
							end
	elseif num_calls == 833333 -- day1_Night_10:40PM -- 833333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12240)
						return true
							end
	elseif num_calls == 841666 -- day1_Night_10:50PM -- 841666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12250)
						return true
							end
	elseif num_calls == 850000 -- day1_Night_11:00PM -- 850000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12300)
						return true
							end
	elseif num_calls == 858333 -- day1_Night_11:10PM -- 858333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12310)
						return true
							end
	elseif num_calls == 866666 -- day1_Night_11:20PM -- 866666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12320)
						return true
							end
	elseif num_calls == 875000 -- day1_Night_11:30PM -- 875000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12330)
						return true
							end
	elseif num_calls == 883333 -- day1_Night_11:40PM -- 883333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12340)
						return true
							end
	elseif num_calls == 891666 -- day1_Night_11:50PM -- 891666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 12350)
						return true
							end
	elseif num_calls == 900000 -- day1_Night_12:00AM -- 900000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10000)
						return true
							end
	elseif num_calls == 908333 -- day1_Night_12:10AM -- 908333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10010)
						return true
							end
	elseif num_calls == 916666 -- day1_Night_12:20AM -- 916666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10020)
						return true
							end
	elseif num_calls == 925000 -- day1_Night_12:30AM -- 925000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10030)
						return true
							end
	elseif num_calls == 933333 -- day1_Night_12:40AM -- 933333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10040)
						return true
							end
	elseif num_calls == 941666 -- day1_Night_12:50AM -- 941666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10050)
						return true
							end
	elseif num_calls == 950000 -- day1_Night_1:00AM -- 950000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10100)
						return true
							end
	elseif num_calls == 958333 -- day1_Night_1:10AM -- 958333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10110)
						return true
							end
	elseif num_calls == 966666 -- day1_Night_1:20AM -- 966666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10120)
						return true
							end
	elseif num_calls == 975000 -- day1_Night_1:30AM -- 975000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10130)
						return true
							end
	elseif num_calls == 983333 -- day1_Night_1:40AM -- 983333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10140)
						return true
							end
	elseif num_calls == 991666 -- day1_Night_1:50AM -- 991666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10150)
						return true
							end
	elseif num_calls == 1000000 -- day1_Night_2:00AM -- 1000000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10200)
						return true
							end
	elseif num_calls == 1008333 -- day1_Night_2:10AM -- 1008333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10210)
						return true
							end
	elseif num_calls == 1016666 -- day1_Night_2:20AM -- 1016666.6666666667
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10220)
						return true
							end
	elseif num_calls == 1025000 -- day1_Night_2:30AM -- 1025000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10230)
						return true
							end
	elseif num_calls == 1033333 -- day1_Night_2:40AM -- 1033333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10240)
						return true
							end
	elseif num_calls == 1041666 -- day1_Night_2:50AM -- 1041666.6666666666
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10250)
						return true
							end
	elseif num_calls == 1050000 -- day1_Night_3:00AM -- 1050000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10300)
						return true
							end
	elseif num_calls == 1058333 -- day1_Night_3:10AM -- 1058333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10310)
						return true
							end
	elseif num_calls == 1066666 -- day1_Night_3:20AM -- 1066666.6666666666
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10320)
						return true
							end
	elseif num_calls == 1075000 -- day1_Night_3:30AM -- 1075000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10330)
						return true
							end
	elseif num_calls == 1083333 -- day1_Night_3:40AM -- 1083333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10340)
						return true
							end
	elseif num_calls == 1091666 -- day1_Night_3:50AM -- 1091666.6666666666
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10350)
						return true
							end
	elseif num_calls == 1100000 -- day1_Night_4:00AM -- 1100000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10400)
						return true
							end
	elseif num_calls == 1108333 -- day1_Night_4:10AM -- 1108333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10410)
						return true
							end
	elseif num_calls == 1116666 -- day1_Night_4:20AM -- 1116666.6666666666
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10420)
						return true
							end
	elseif num_calls == 1125000 -- day1_Night_4:30AM -- 1125000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10430)
						return true
							end
	elseif num_calls == 1133333 -- day1_Night_4:40AM -- 1133333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10440)
						return true
							end
	elseif num_calls == 1141666 -- day1_Night_4:50AM -- 1141666.6666666666
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10450)
						return true
							end
	elseif num_calls == 1150000 -- day1_Night_5:00AM -- 1150000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10500)
						return true
							end
	elseif num_calls == 1158333 -- day1_Night_5:10AM -- 1158333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10510)
						return true
							end
	elseif num_calls == 1166666 -- day1_Night_5:20AM -- 1166666.6666666666
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10520)
						return true
							end
	elseif num_calls == 1175000 -- day1_Night_5:30AM -- 1175000
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10530)
						return true
							end
	elseif num_calls == 1183333 -- day1_Night_5:40AM -- 1183333.3333333333
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10540)
						return true
							end
	elseif num_calls == 1191666 -- day1_Night_5:50AM -- 1191666.6666666666
		then function map:on_draw(dst_surface)
					self.day1_night_overlay:draw(dst_surface)
					game:set_value("time", 10550)
						return true
							end
-- Day 2
	elseif num_calls == 1200000 -- day2_Dawn_6:00AM -- 1200000
		then function map:on_draw(dst_surface)
					self.day2_dawn01_overlay:draw(dst_surface)
					game:set_value("time", 20600)
						return true
							end
	elseif num_calls == 1208333 -- day2_Dawn_6:10AM -- 1208333.333333333333
		then function map:on_draw(dst_surface)
					self.day2_dawn02_overlay:draw(dst_surface)
					game:set_value("time", 20610)
						return true
							end
	elseif num_calls == 1216666 -- day2_Dawn_6:20AM -- 1216666.66666666666
		then function map:on_draw(dst_surface)
					self.day2_dawn03_overlay:draw(dst_surface)
					game:set_value("time", 20620)
						return true
							end
	elseif num_calls == 1225000 -- day2_Dawn_6:30AM -- 1225000
		then function map:on_draw(dst_surface)
					self.day2_dawn04_overlay:draw(dst_surface)
					game:set_value("time", 20630)
						return true
							end
	elseif num_calls == 1233333 -- day2_Dawn_6:40AM -- 1233333.33333333333
		then function map:on_draw(dst_surface)
					self.day2_dawn05_overlay:draw(dst_surface)
					game:set_value("time", 20640)
						return true
							end
	elseif num_calls == 1241666 -- day2_Dawn_6:50AM -- 1241666.66666666666
		then function map:on_draw(dst_surface)
					self.day2_dawn06_overlay:draw(dst_surface)
					game:set_value("time", 20650)
						return true
							end
	elseif num_calls == 1250000 -- day2_Dawn_7:00AM -- 1250000
		then function map:on_draw(dst_surface)
					self.day2_dawn07_overlay:draw(dst_surface)
					game:set_value("time", 20700)
						return true
							end
	elseif num_calls == 1258333 -- day2_Dawn_7:10AM -- 1258333.33333333333
		then function map:on_draw(dst_surface)
					self.day2_dawn08_overlay:draw(dst_surface)
					game:set_value("time", 20710)
						return true
							end
	elseif num_calls == 1266666 -- day2_Dawn_7:20AM -- 1266666.66666666666
		then function map:on_draw(dst_surface)
					self.day2_dawn09_overlay:draw(dst_surface)
					game:set_value("time", 20720)
						return true
							end
	elseif num_calls == 1275000 -- day2_Dawn_7:30AM -- 1275000
		then function map:on_draw(dst_surface)
					self.day2_dawn10_overlay:draw(dst_surface)
					game:set_value("time", 20730)
						return true
							end
	elseif num_calls == 1283333 -- day2_Dawn_7:40AM -- 1283333.33333333333
		then function map:on_draw(dst_surface)
					self.day2_dawn11_overlay:draw(dst_surface)
					game:set_value("time", 20740)
						return true
							end
	elseif num_calls == 1291666 -- day2_Dawn_7:50AM -- 1291666.66666666666
		then function map:on_draw(dst_surface)
					self.day2_dawn12_overlay:draw(dst_surface)
					game:set_value("time", 20750)
						return true
							end
	elseif num_calls == 1300000 -- day2_Day_8:00AM -- 1300000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 20800)
						return true
							end
	elseif num_calls == 1308333 -- day2_Day_8:10AM -- 1308333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 20810)
						return true
							end
	elseif num_calls == 1316666 -- day2_Day_8:20AM -- 1316666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 20820)
						return true
							end
	elseif num_calls == 1325000 -- day2_Day_8:30AM -- 1325000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 20830)
						return true
							end
	elseif num_calls == 1333333 -- day2_Day_8:40AM -- 1333333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 20840)
						return true
							end
	elseif num_calls == 1341666 -- day2_Day_8:50AM -- 1341666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 20850)
						return true
							end
	elseif num_calls == 1350000 -- day2_Day_9:00AM -- 1350000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 20900)
						return true
							end
	elseif num_calls == 1358333 -- day2_Day_9:10AM -- 1358333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 20910)
						return true
							end
	elseif num_calls == 1366666 -- day2_Day_9:20AM -- 1366666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 20920)
						return true
							end
	elseif num_calls == 1375000 -- day2_Day_9:30AM -- 1375000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 20930)
						return true
							end
	elseif num_calls == 1383333 -- day2_Day_9:40AM -- 1383333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 20940)
						return true
							end
	elseif num_calls == 1391666 -- day2_Day_9:50AM -- 1391666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 20950)
						return true
							end
	elseif num_calls == 1400000 -- day2_Day_10:00AM -- 1400000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21000)
						return true
							end
	elseif num_calls == 1408333 -- day2_Day_10:10AM -- 1408333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21010)
						return true
							end
	elseif num_calls == 1416666 -- day2_Day_10:20AM -- 1416666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21020)
						return true
							end
	elseif num_calls == 1425000 -- day2_Day_10:30AM -- 1425000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21030)
						return true
							end
	elseif num_calls == 1433333 -- day2_Day_10:40AM -- 1433333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21040)
						return true
							end
	elseif num_calls == 1441666 -- day2_Day_10:50AM -- 1441666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21050)
						return true
							end
	elseif num_calls == 1450000 -- day2_Day_11:00AM -- 1450000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21100)
						return true
							end
	elseif num_calls == 1458333 -- day2_Day_11:10AM -- 1458333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21110)
						return true
							end
	elseif num_calls == 1466666 -- day2_Day_11:20AM -- 1466666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21120)
						return true
							end
	elseif num_calls == 1475000 -- day2_Day_11:30AM -- 1475000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21130)
						return true
							end
	elseif num_calls == 1483333 -- day2_Day_11:40AM -- 1483333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21140)
						return true
							end
	elseif num_calls == 1491666 -- day2_Day_11:50AM -- 1491666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21150)
						return true
							end
	elseif num_calls == 1500000 -- day2_Day_12:00PM -- 1500000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21200)
						return true
							end
	elseif num_calls == 1508333 -- day2_Day_12:10PM -- 1508333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21210)
						return true
							end
	elseif num_calls == 1516666 -- day2_Day_12:20PM -- 1516666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21220)
						return true
							end
	elseif num_calls == 1525000 -- day2_Day_12:30PM -- 1525000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21230)
						return true
							end
	elseif num_calls == 1533333 -- day2_Day_12:40PM -- 1533333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21240)
						return true
							end
	elseif num_calls == 1541666 -- day2_Day_12:50PM -- 1541666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21250)
						return true
							end
	elseif num_calls == 1550000 -- day2_Day_1:00PM -- 1550000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21300)
						return true
							end
	elseif num_calls == 1558333 -- day2_Day_1:10PM -- 1558333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21310)
						return true
							end
	elseif num_calls == 1566666 -- day2_Day_1:20PM -- 1566666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21320)
						return true
							end
	elseif num_calls == 1575000 -- day2_Day_1:30PM -- 1575000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21330)
						return true
							end
	elseif num_calls == 1583333 -- day2_Day_1:40PM -- 1583333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21340)
						return true
							end
	elseif num_calls == 1591666 -- day2_Day_1:50PM -- 1591666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21350)
						return true
							end
	elseif num_calls == 1600000 -- day2_Day_2:00PM -- 1600000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21400)
						return true
							end
	elseif num_calls == 1608333 -- day2_Day_2:10PM -- 1608333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21410)
						return true
							end
	elseif num_calls == 1616666 -- day2_Day_2:20PM -- 1616666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21420)
						return true
							end
	elseif num_calls == 1625000 -- day2_Day_2:30PM -- 1625000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21430)
						return true
							end
	elseif num_calls == 1633333 -- day2_Day_2:40PM -- 1633333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21440)
						return true
							end
	elseif num_calls == 1641666 -- day2_Day_2:50PM -- 1641666.6666666666
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21450)
						return true
							end
	elseif num_calls == 1650000 -- day2_Day_3:00PM -- 1650000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21500)
						return true
							end
	elseif num_calls == 1658333 -- day2_Day_3:10PM -- 1658333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21510)
						return true
							end
	elseif num_calls == 1666666 -- day2_Day_3:20PM -- 1666666.6666666666
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21520)
						return true
							end
	elseif num_calls == 1675000 -- day2_Day_3:30PM -- 1675000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21530)
						return true
							end
	elseif num_calls == 1683333 -- day2_Day_3:40PM -- 1683333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21540)
						return true
							end
	elseif num_calls == 1691666 -- day2_Day_3:50PM -- 1691666.6666666666
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21550)
						return true
							end
	elseif num_calls == 1700000 -- day2_Day_4:00PM -- 1700000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21600)
						return true
							end
	elseif num_calls == 1708333 -- day2_Day_4:10PM -- 1708333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21610)
						return true
							end
	elseif num_calls == 1716666 -- day2_Day_4:20PM -- 1716666.6666666666
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21620)
						return true
							end
	elseif num_calls == 1725000 -- day2_Day_4:30PM -- 1725000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21630)
						return true
							end
	elseif num_calls == 1733333 -- day2_Day_4:40PM -- 1733333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21640)
						return true
							end
	elseif num_calls == 1741666 -- day2_Day_4:50PM -- 1741666.6666666666
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21650)
						return true
							end
	elseif num_calls == 1750000 -- day2_Day_5:00PM -- 1750000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21700)
						return true
							end
	elseif num_calls == 1758333 -- day2_Day_5:10PM -- 1758333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21710)
						return true
							end
	elseif num_calls == 1766666 -- day2_Day_5:20PM -- 1766666.6666666666
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21720)
						return true
							end
	elseif num_calls == 1775000 -- day2_Day_5:30PM -- 1775000
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21730)
						return true
							end
	elseif num_calls == 1783333 -- day2_Day_5:40PM -- 1783333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21740)
						return true
							end
	elseif num_calls == 1791666 -- day2_Day_5:50PM -- 1791666.6666666666
		then function map:on_draw(dst_surface)
					self.day2_day_overlay:draw(dst_surface)
					game:set_value("time", 21750)
						return true
							end
	elseif num_calls == 1800000 -- day2_Dusk_6:00PM -- 1800000
		then function map:on_draw(dst_surface)
					self.day2_dusk01_overlay:draw(dst_surface)
					game:set_value("time", 21800)
						return true
							end
	elseif num_calls == 1808333 -- day2_Dusk_6:10PM -- 1808333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_dusk02_overlay:draw(dst_surface)
					game:set_value("time", 21810)
						return true
							end
	elseif num_calls == 1816666 -- day2_Dusk_6:20PM -- 1816666.66666666666
		then function map:on_draw(dst_surface)
					self.day2_dusk03_overlay:draw(dst_surface)
					game:set_value("time", 21820)
						return true
							end
	elseif num_calls == 1825000 -- day2_Dusk_6:30PM -- 1825000
		then function map:on_draw(dst_surface)
					self.day2_dusk04_overlay:draw(dst_surface)
					game:set_value("time", 21830)
						return true
							end
	elseif num_calls == 1833333 -- day2_Dusk_6:40PM -- 1833333.33333333333
		then function map:on_draw(dst_surface)
					self.day2_dusk05_overlay:draw(dst_surface)
					game:set_value("time", 21840)
						return true
							end
	elseif num_calls == 1841666 -- day2_Dusk_6:50PM -- 1841666.66666666666
		then function map:on_draw(dst_surface)
					self.day2_dusk06_overlay:draw(dst_surface)
					game:set_value("time", 21850)
						return true
							end
	elseif num_calls == 1850000 -- day2_Dusk_7:00PM -- 1850000
		then function map:on_draw(dst_surface)
					self.day2_dusk07_overlay:draw(dst_surface)
					game:set_value("time", 21900)
						return true
							end
	elseif num_calls == 1858333 -- day2_Dusk_7:10PM -- 1858333.33333333333
		then function map:on_draw(dst_surface)
					self.day2_dusk08_overlay:draw(dst_surface)
					game:set_value("time", 21910)
						return true
							end
	elseif num_calls == 1866666 -- day2_Dusk_7:20PM -- 1866666.66666666666
		then function map:on_draw(dst_surface)
					self.day2_dusk09_overlay:draw(dst_surface)
					game:set_value("time", 21920)
						return true
							end
	elseif num_calls == 1875000 -- day2_Dusk_7:30PM -- 1875000
		then function map:on_draw(dst_surface)
					self.day2_dusk10_overlay:draw(dst_surface)
					game:set_value("time", 21930)
						return true
							end
	elseif num_calls == 1883333 -- day2_Dusk_7:40PM -- 1883333.33333333333
		then function map:on_draw(dst_surface)
					self.day2_dusk11_overlay:draw(dst_surface)
					game:set_value("time", 21940)
						return true
							end
	elseif num_calls == 1891666 -- day2_Dusk_7:50PM -- 1891666.66666666666
		then function map:on_draw(dst_surface)
					self.day2_dusk12_overlay:draw(dst_surface)
					game:set_value("time", 21950)
						return true
							end
	elseif num_calls == 1900000 -- day2_Night_8:00PM -- 19000000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22000)
						return true
							end
	elseif num_calls == 1908333 -- day2_Night_8:10PM -- 19008333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22010)
						return true
							end
	elseif num_calls == 1916666 -- day2_Night_8:20PM -- 1916666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22020)
						return true
							end
	elseif num_calls == 1925000 -- day2_Night_8:30PM -- 1925000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22030)
						return true
							end
	elseif num_calls == 1933333 -- day2_Night_8:40PM -- 1933333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22040)
						return true
							end
	elseif num_calls == 1941666 -- day2_Night_8:50PM -- 1941666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22050)
						return true
							end
	elseif num_calls == 1950000 -- day2_Night_9:00PM -- 1950000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22100)
						return true
							end
	elseif num_calls == 1958333 -- day2_Night_9:10PM -- 1958333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22110)
						return true
							end
	elseif num_calls == 1966666 -- day2_Night_9:20PM -- 1966666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22120)
						return true
							end
	elseif num_calls == 1975000 -- day2_Night_9:30PM -- 1975000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22130)
						return true
							end
	elseif num_calls == 1983333 -- day2_Night_9:40PM -- 1983333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22140)
						return true
							end
	elseif num_calls == 1991666 -- day2_Night_9:50PM -- 1991666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22150)
						return true
							end
	elseif num_calls == 2000000 -- day2_Night_10:00PM -- 2000000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22200)
						return true
							end
	elseif num_calls == 2008333 -- day2_Night_10:10PM -- 2008333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22210)
						return true
							end
	elseif num_calls == 2016666 -- day2_Night_10:20PM -- 2016666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22220)
						return true
							end
	elseif num_calls == 2025000 -- day2_Night_10:30PM -- 2025000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22230)
						return true
							end
	elseif num_calls == 2033333 -- day2_Night_10:40PM -- 2033333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22240)
						return true
							end
	elseif num_calls == 2041666 -- day2_Night_10:50PM -- 2041666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22250)
						return true
							end
	elseif num_calls == 2050000 -- day2_Night_11:00PM -- 2050000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22300)
						return true
							end
	elseif num_calls == 2058333 -- day2_Night_11:10PM -- 2058333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22310)
						return true
							end
	elseif num_calls == 2066666 -- day2_Night_11:20PM -- 2066666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22320)
						return true
							end
	elseif num_calls == 2075000 -- day2_Night_11:30PM -- 2075000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22330)
						return true
							end
	elseif num_calls == 2083333 -- day2_Night_11:40PM -- 2083333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22340)
						return true
							end
	elseif num_calls == 2091666 -- day2_Night_11:50PM -- 2091666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 22350)
						return true
							end
	elseif num_calls == 2100000 -- day2_Night_12:00AM -- 2100000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20000)
						return true
							end
	elseif num_calls == 2108333 -- day2_Night_12:10AM -- 2108333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20010)
						return true
							end
	elseif num_calls == 2116666 -- day2_Night_12:20AM -- 2116666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20020)
						return true
							end
	elseif num_calls == 2125000 -- day2_Night_12:30AM -- 2125000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20030)
						return true
							end
	elseif num_calls == 2133333 -- day2_Night_12:40AM -- 2133333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20040)
						return true
							end
	elseif num_calls == 2141666 -- day2_Night_12:50AM -- 2141666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20050)
						return true
							end
	elseif num_calls == 2150000 -- day2_Night_1:00AM -- 2150000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20100)
						return true
							end
	elseif num_calls == 2158333 -- day2_Night_1:10AM -- 2158333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20110)
						return true
							end
	elseif num_calls == 2166666 -- day2_Night_1:20AM -- 2166666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20120)
						return true
							end
	elseif num_calls == 2175000 -- day2_Night_1:30AM -- 2175000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20130)
						return true
							end
	elseif num_calls == 2183333 -- day2_Night_1:40AM -- 2183333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20140)
						return true
							end
	elseif num_calls == 2191666 -- day2_Night_1:50AM -- 2191666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20150)
						return true
							end
	elseif num_calls == 2200000 -- day2_Night_2:00AM -- 2200000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20200)
						return true
							end
	elseif num_calls == 2208333 -- day2_Night_2:10AM -- 2208333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20210)
						return true
							end
	elseif num_calls == 2216666 -- day2_Night_2:20AM -- 2216666.6666666667
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20220)
						return true
							end
	elseif num_calls == 2225000 -- day2_Night_2:30AM -- 2225000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20230)
						return true
							end
	elseif num_calls == 2233333 -- day2_Night_2:40AM -- 2233333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20240)
						return true
							end
	elseif num_calls == 2241666 -- day2_Night_2:50AM -- 2241666.6666666666
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20250)
						return true
							end
	elseif num_calls == 2250000 -- day2_Night_3:00AM -- 2250000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20300)
						return true
							end
	elseif num_calls == 2258333 -- day2_Night_3:10AM -- 2258333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20310)
						return true
							end
	elseif num_calls == 2266666 -- day2_Night_3:20AM -- 2266666.6666666666
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20320)
						return true
							end
	elseif num_calls == 2275000 -- day2_Night_3:30AM -- 2275000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20330)
						return true
							end
	elseif num_calls == 2283333 -- day2_Night_3:40AM -- 2283333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20340)
						return true
							end
	elseif num_calls == 2291666 -- day2_Night_3:50AM -- 2291666.6666666666
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20350)
						return true
							end
	elseif num_calls == 2300000 -- day2_Night_4:00AM -- 2300000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20400)
						return true
							end
	elseif num_calls == 2308333 -- day2_Night_4:10AM -- 2308333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20410)
						return true
							end
	elseif num_calls == 2316666 -- day2_Night_4:20AM -- 2316666.6666666666
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20420)
						return true
							end
	elseif num_calls == 2325000 -- day2_Night_4:30AM -- 2325000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20430)
						return true
							end
	elseif num_calls == 2333333 -- day2_Night_4:40AM -- 2333333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20440)
						return true
							end
	elseif num_calls == 2341666 -- day2_Night_4:50AM -- 2341666.6666666666
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20450)
						return true
							end
	elseif num_calls == 2350000 -- day2_Night_5:00AM -- 2350000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20500)
						return true
							end
	elseif num_calls == 2358333 -- day2_Night_5:10AM -- 2358333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20510)
						return true
							end
	elseif num_calls == 2366666 -- day2_Night_5:20AM -- 2366666.6666666666
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20520)
						return true
							end
	elseif num_calls == 2375000 -- day2_Night_5:30AM -- 2375000
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20530)
						return true
							end
	elseif num_calls == 2383333 -- day2_Night_5:40AM -- 2383333.3333333333
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20540)
						return true
							end
	elseif num_calls == 2391666 -- day2_Night_5:50AM -- 2391666.6666666666
		then function map:on_draw(dst_surface)
					self.day2_night_overlay:draw(dst_surface)
					game:set_value("time", 20550)
						return true
							end
-- Day 3
	elseif num_calls == 2400000 -- day3_Dawn_6:00AM -- 2400000
		then function map:on_draw(dst_surface)
					self.day3_dawn01_overlay:draw(dst_surface)
					game:set_value("time", 30600)
						return true
							end
	elseif num_calls == 2408333 -- day3_Dawn_6:10AM -- 2408333.333333333333
		then function map:on_draw(dst_surface)
					self.day3_dawn02_overlay:draw(dst_surface)
					game:set_value("time", 30610)
						return true
							end
	elseif num_calls == 2416666 -- day3_Dawn_6:20AM -- 2416666.66666666666
		then function map:on_draw(dst_surface)
					self.day3_dawn03_overlay:draw(dst_surface)
					game:set_value("time", 30620)
						return true
							end
	elseif num_calls == 2425000 -- day3_Dawn_6:30AM -- 2425000
		then function map:on_draw(dst_surface)
					self.day3_dawn04_overlay:draw(dst_surface)
					game:set_value("time", 30630)
						return true
							end
	elseif num_calls == 2433333 -- day3_Dawn_6:40AM -- 2433333.33333333333
		then function map:on_draw(dst_surface)
					self.day3_dawn05_overlay:draw(dst_surface)
					game:set_value("time", 30640)
						return true
							end
	elseif num_calls == 2441666 -- day3_Dawn_6:50AM -- 2441666.66666666666
		then function map:on_draw(dst_surface)
					self.day3_dawn06_overlay:draw(dst_surface)
					game:set_value("time", 30650)
						return true
							end
	elseif num_calls == 2450000 -- day3_Dawn_7:00AM -- 2450000
		then function map:on_draw(dst_surface)
					self.day3_dawn07_overlay:draw(dst_surface)
					game:set_value("time", 30700)
						return true
							end
	elseif num_calls == 2458333 -- day3_Dawn_7:10AM -- 2458333.33333333333
		then function map:on_draw(dst_surface)
					self.day3_dawn08_overlay:draw(dst_surface)
					game:set_value("time", 30710)
						return true
							end
	elseif num_calls == 2466666 -- day3_Dawn_7:20AM -- 2466666.66666666666
		then function map:on_draw(dst_surface)
					self.day3_dawn09_overlay:draw(dst_surface)
					game:set_value("time", 30720)
						return true
							end
	elseif num_calls == 2475000 -- day3_Dawn_7:30AM -- 2475000
		then function map:on_draw(dst_surface)
					self.day3_dawn10_overlay:draw(dst_surface)
					game:set_value("time", 30730)
						return true
							end
	elseif num_calls == 2483333 -- day3_Dawn_7:40AM -- 2483333.33333333333
		then function map:on_draw(dst_surface)
					self.day3_dawn11_overlay:draw(dst_surface)
					game:set_value("time", 30740)
						return true
							end
	elseif num_calls == 2491666 -- day3_Dawn_7:50AM -- 2491666.66666666666
		then function map:on_draw(dst_surface)
					self.day3_dawn12_overlay:draw(dst_surface)
					game:set_value("time", 30750)
						return true
							end
	elseif num_calls == 2500000 -- day3_Day_8:00AM -- 2500000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 30800)
						return true
							end
	elseif num_calls == 2508333 -- day3_Day_8:10AM -- 2508333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 30810)
						return true
							end
	elseif num_calls == 2516666 -- day3_Day_8:20AM -- 2516666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 30820)
						return true
							end
	elseif num_calls == 2525000 -- day3_Day_8:30AM -- 2525000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 30830)
						return true
							end
	elseif num_calls == 2533333 -- day3_Day_8:40AM -- 2533333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 30840)
						return true
							end
	elseif num_calls == 2541666 -- day3_Day_8:50AM -- 2541666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 30850)
						return true
							end
	elseif num_calls == 2550000 -- day3_Day_9:00AM -- 2550000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 30900)
						return true
							end
	elseif num_calls == 2558333 -- day3_Day_9:10AM -- 2558333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 30910)
						return true
							end
	elseif num_calls == 2566666 -- day3_Day_9:20AM -- 2566666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 30920)
						return true
							end
	elseif num_calls == 2575000 -- day3_Day_9:30AM -- 2575000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 30930)
						return true
							end
	elseif num_calls == 2583333 -- day3_Day_9:40AM -- 2583333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 30940)
						return true
							end
	elseif num_calls == 2591666 -- day3_Day_9:50AM -- 2591666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 30950)
						return true
							end
	elseif num_calls == 2600000 -- day3_Day_10:00AM -- 2600000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31000)
						return true
							end
	elseif num_calls == 2608333 -- day3_Day_10:10AM -- 2608333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31010)
						return true
							end
	elseif num_calls == 2616666 -- day3_Day_10:20AM -- 2616666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31020)
						return true
							end
	elseif num_calls == 2625000 -- day3_Day_10:30AM -- 2625000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31030)
						return true
							end
	elseif num_calls == 2633333 -- day3_Day_10:40AM -- 2633333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31040)
						return true
							end
	elseif num_calls == 2641666 -- day3_Day_10:50AM -- 2641666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31050)
						return true
							end
	elseif num_calls == 2650000 -- day3_Day_11:00AM -- 2650000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31100)
						return true
							end
	elseif num_calls == 2658333 -- day3_Day_11:10AM -- 2658333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31110)
						return true
							end
	elseif num_calls == 2666666 -- day3_Day_11:20AM -- 2666666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31120)
						return true
							end
	elseif num_calls == 2675000 -- day3_Day_11:30AM -- 2675000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31130)
						return true
							end
	elseif num_calls == 2683333 -- day3_Day_11:40AM -- 2683333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31140)
						return true
							end
	elseif num_calls == 2691666 -- day3_Day_11:50AM -- 2691666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31150)
						return true
							end
	elseif num_calls == 2700000 -- day3_Day_12:00PM -- 2700000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31200)
						return true
							end
	elseif num_calls == 2708333 -- day3_Day_12:10PM -- 2708333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31210)
						return true
							end
	elseif num_calls == 2716666 -- day3_Day_12:20PM -- 2716666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31220)
						return true
							end
	elseif num_calls == 2725000 -- day3_Day_12:30PM -- 2725000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31230)
						return true
							end
	elseif num_calls == 2733333 -- day3_Day_12:40PM -- 2733333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31240)
						return true
							end
	elseif num_calls == 2741666 -- day3_Day_12:50PM -- 2741666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31250)
						return true
							end
	elseif num_calls == 2750000 -- day3_Day_1:00PM -- 2750000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31300)
						return true
							end
	elseif num_calls == 2758333 -- day3_Day_1:10PM -- 2758333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31310)
						return true
							end
	elseif num_calls == 2766666 -- day3_Day_1:20PM -- 2766666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31320)
						return true
							end
	elseif num_calls == 2775000 -- day3_Day_1:30PM -- 2775000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31330)
						return true
							end
	elseif num_calls == 2783333 -- day3_Day_1:40PM -- 2783333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31340)
						return true
							end
	elseif num_calls == 2791666 -- day3_Day_1:50PM -- 2791666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31350)
						return true
							end
	elseif num_calls == 2800000 -- day3_Day_2:00PM -- 2800000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31400)
						return true
							end
	elseif num_calls == 2808333 -- day3_Day_2:10PM -- 2808333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31410)
						return true
							end
	elseif num_calls == 2816666 -- day3_Day_2:20PM -- 2816666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31420)
						return true
							end
	elseif num_calls == 2825000 -- day3_Day_2:30PM -- 2825000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31430)
						return true
							end
	elseif num_calls == 2833333 -- day3_Day_2:40PM -- 2833333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31440)
						return true
							end
	elseif num_calls == 2841666 -- day3_Day_2:50PM -- 2841666.6666666666
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31450)
						return true
							end
	elseif num_calls == 2850000 -- day3_Day_3:00PM -- 2850000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31500)
						return true
							end
	elseif num_calls == 2858333 -- day3_Day_3:10PM -- 2858333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31510)
						return true
							end
	elseif num_calls == 2866666 -- day3_Day_3:20PM -- 2866666.6666666666
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31520)
						return true
							end
	elseif num_calls == 2875000 -- day3_Day_3:30PM -- 2875000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31530)
						return true
							end
	elseif num_calls == 2883333 -- day3_Day_3:40PM -- 2883333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31540)
						return true
							end
	elseif num_calls == 2891666 -- day3_Day_3:50PM -- 2891666.6666666666
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31550)
						return true
							end
	elseif num_calls == 2900000 -- day3_Day_4:00PM -- 2900000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31600)
						return true
							end
	elseif num_calls == 2908333 -- day3_Day_4:10PM -- 2908333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31610)
						return true
							end
	elseif num_calls == 2916666 -- day3_Day_4:20PM -- 2916666.6666666666
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31620)
						return true
							end
	elseif num_calls == 2925000 -- day3_Day_4:30PM -- 2925000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31630)
						return true
							end
	elseif num_calls == 2933333 -- day3_Day_4:40PM -- 2933333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31640)
						return true
							end
	elseif num_calls == 2941666 -- day3_Day_4:50PM -- 2941666.6666666666
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31650)
						return true
							end
	elseif num_calls == 2950000 -- day3_Day_5:00PM -- 2950000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31700)
						return true
							end
	elseif num_calls == 2958333 -- day3_Day_5:10PM -- 2958333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31710)
						return true
							end
	elseif num_calls == 2966666 -- day3_Day_5:20PM -- 2966666.6666666666
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31720)
						return true
							end
	elseif num_calls == 2975000 -- day3_Day_5:30PM -- 2975000
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31730)
						return true
							end
	elseif num_calls == 2983333 -- day3_Day_5:40PM -- 2983333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31740)
						return true
							end
	elseif num_calls == 2991666 -- day3_Day_5:50PM -- 2991666.6666666666
		then function map:on_draw(dst_surface)
					self.day3_day_overlay:draw(dst_surface)
					game:set_value("time", 31750)
						return true
							end
	elseif num_calls == 3000000 -- day3_Dusk_6:00PM -- 3000000
		then function map:on_draw(dst_surface)
					self.day3_dusk01_overlay:draw(dst_surface)
					game:set_value("time", 31800)
						return true
							end
	elseif num_calls == 3008333 -- day3_Dusk_6:10PM -- 3008333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_dusk02_overlay:draw(dst_surface)
					game:set_value("time", 31810)
						return true
							end
	elseif num_calls == 3016666 -- day3_Dusk_6:20PM -- 3016666.66666666666
		then function map:on_draw(dst_surface)
					self.day3_dusk03_overlay:draw(dst_surface)
					game:set_value("time", 31820)
						return true
							end
	elseif num_calls == 3025000 -- day3_Dusk_6:30PM -- 3025000
		then function map:on_draw(dst_surface)
					self.day3_dusk04_overlay:draw(dst_surface)
					game:set_value("time", 31830)
						return true
							end
	elseif num_calls == 3033333 -- day3_Dusk_6:40PM -- 3033333.33333333333
		then function map:on_draw(dst_surface)
					self.day3_dusk05_overlay:draw(dst_surface)
					game:set_value("time", 31840)
						return true
							end
	elseif num_calls == 3041666 -- day3_Dusk_6:50PM -- 3041666.66666666666
		then function map:on_draw(dst_surface)
					self.day3_dusk06_overlay:draw(dst_surface)
					game:set_value("time", 31850)
						return true
							end
	elseif num_calls == 3050000 -- day3_Dusk_7:00PM -- 3050000
		then function map:on_draw(dst_surface)
					self.day3_dusk07_overlay:draw(dst_surface)
					game:set_value("time", 31900)
						return true
							end
	elseif num_calls == 3058333 -- day3_Dusk_7:10PM -- 3058333.33333333333
		then function map:on_draw(dst_surface)
					self.day3_dusk08_overlay:draw(dst_surface)
					game:set_value("time", 31910)
						return true
							end
	elseif num_calls == 3066666 -- day3_Dusk_7:20PM -- 3066666.66666666666
		then function map:on_draw(dst_surface)
					self.day3_dusk09_overlay:draw(dst_surface)
					game:set_value("time", 31920)
						return true
							end
	elseif num_calls == 3075000 -- day3_Dusk_7:30PM -- 3075000
		then function map:on_draw(dst_surface)
					self.day3_dusk10_overlay:draw(dst_surface)
					game:set_value("time", 31930)
						return true
							end
	elseif num_calls == 3083333 -- day3_Dusk_7:40PM -- 3083333.33333333333
		then function map:on_draw(dst_surface)
					self.day3_dusk11_overlay:draw(dst_surface)
					game:set_value("time", 31940)
						return true
							end
	elseif num_calls == 3091666 -- day3_Dusk_7:50PM -- 3091666.66666666666
		then function map:on_draw(dst_surface)
					self.day3_dusk12_overlay:draw(dst_surface)
					game:set_value("time", 31950)
						return true
							end
	elseif num_calls == 3100000 -- day3_Night_8:00PM -- 31000000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32000)
						return true
							end
	elseif num_calls == 3108333 -- day3_Night_8:10PM -- 31008333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32010)
						return true
							end
	elseif num_calls == 3116666 -- day3_Night_8:20PM -- 3116666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32020)
						return true
							end
	elseif num_calls == 3125000 -- day3_Night_8:30PM -- 3125000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32030)
						return true
							end
	elseif num_calls == 3133333 -- day3_Night_8:40PM -- 3133333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32040)
						return true
							end
	elseif num_calls == 3141666 -- day3_Night_8:50PM -- 3141666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32050)
						return true
							end
	elseif num_calls == 3150000 -- day3_Night_9:00PM -- 3150000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32100)
						return true
							end
	elseif num_calls == 3158333 -- day3_Night_9:10PM -- 3158333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32110)
						return true
							end
	elseif num_calls == 3166666 -- day3_Night_9:20PM -- 3166666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32120)
						return true
							end
	elseif num_calls == 3175000 -- day3_Night_9:30PM -- 3175000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32130)
						return true
							end
	elseif num_calls == 3183333 -- day3_Night_9:40PM -- 3183333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32140)
						return true
							end
	elseif num_calls == 3191666 -- day3_Night_9:50PM -- 3191666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32150)
						return true
							end
	elseif num_calls == 3200000 -- day3_Night_10:00PM -- 3200000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32200)
						return true
							end
	elseif num_calls == 3208333 -- day3_Night_10:10PM -- 3208333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32210)
						return true
							end
	elseif num_calls == 3216666 -- day3_Night_10:20PM -- 3216666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32220)
						return true
							end
	elseif num_calls == 3225000 -- day3_Night_10:30PM -- 3225000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32230)
						return true
							end
	elseif num_calls == 3233333 -- day3_Night_10:40PM -- 3233333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32240)
						return true
							end
	elseif num_calls == 3241666 -- day3_Night_10:50PM -- 3241666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32250)
						return true
							end
	elseif num_calls == 3250000 -- day3_Night_11:00PM -- 3250000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32300)
						return true
							end
	elseif num_calls == 3258333 -- day3_Night_11:10PM -- 3258333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32310)
						return true
							end
	elseif num_calls == 3266666 -- day3_Night_11:20PM -- 3266666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32320)
						return true
							end
	elseif num_calls == 3275000 -- day3_Night_11:30PM -- 3275000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32330)
						return true
							end
	elseif num_calls == 3283333 -- day3_Night_11:40PM -- 3283333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32340)
						return true
							end
	elseif num_calls == 3291666 -- day3_Night_11:50PM -- 3291666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 32350)
						return true
							end
	elseif num_calls == 3300000 -- day3_Night_12:00AM -- 3300000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30000)
						return true
							end
	elseif num_calls == 3308333 -- day3_Night_12:10AM -- 3308333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30010)
						return true
							end
	elseif num_calls == 3316666 -- day3_Night_12:20AM -- 3316666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30020)
						return true
							end
	elseif num_calls == 3325000 -- day3_Night_12:30AM -- 3325000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30030)
						return true
							end
	elseif num_calls == 3333333 -- day3_Night_12:40AM -- 3333333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30040)
						return true
							end
	elseif num_calls == 3341666 -- day3_Night_12:50AM -- 3341666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30050)
						return true
							end
	elseif num_calls == 3350000 -- day3_Night_1:00AM -- 3350000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30100)
						return true
							end
	elseif num_calls == 3358333 -- day3_Night_1:10AM -- 3358333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30110)
						return true
							end
	elseif num_calls == 3366666 -- day3_Night_1:20AM -- 3366666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30120)
						return true
							end
	elseif num_calls == 3375000 -- day3_Night_1:30AM -- 3375000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30130)
						return true
							end
	elseif num_calls == 3383333 -- day3_Night_1:40AM -- 3383333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30140)
						return true
							end
	elseif num_calls == 3391666 -- day3_Night_1:50AM -- 3391666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30150)
						return true
							end
	elseif num_calls == 3400000 -- day3_Night_2:00AM -- 3400000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30200)
						return true
							end
	elseif num_calls == 3408333 -- day3_Night_2:10AM -- 3408333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30210)
						return true
							end
	elseif num_calls == 3416666 -- day3_Night_2:20AM -- 3416666.6666666667
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30220)
						return true
							end
	elseif num_calls == 3425000 -- day3_Night_2:30AM -- 3425000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30230)
						return true
							end
	elseif num_calls == 3433333 -- day3_Night_2:40AM -- 3433333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30240)
						return true
							end
	elseif num_calls == 3441666 -- day3_Night_2:50AM -- 3441666.6666666666
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30250)
						return true
							end
	elseif num_calls == 3450000 -- day3_Night_3:00AM -- 3450000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30300)
						return true
							end
	elseif num_calls == 3458333 -- day3_Night_3:10AM -- 3458333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30310)
						return true
							end
	elseif num_calls == 3466666 -- day3_Night_3:20AM -- 3466666.6666666666
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30320)
						return true
							end
	elseif num_calls == 3475000 -- day3_Night_3:30AM -- 3475000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30330)
						return true
							end
	elseif num_calls == 3483333 -- day3_Night_3:40AM -- 3483333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30340)
						return true
							end
	elseif num_calls == 3491666 -- day3_Night_3:50AM -- 3491666.6666666666
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30350)
						return true
							end
	elseif num_calls == 3500000 -- day3_Night_4:00AM -- 3500000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30400)
						return true
							end
	elseif num_calls == 3508333 -- day3_Night_4:10AM -- 3508333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30410)
						return true
							end
	elseif num_calls == 3516666 -- day3_Night_4:20AM -- 3516666.6666666666
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30420)
						return true
							end
	elseif num_calls == 3525000 -- day3_Night_4:30AM -- 3525000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30430)
						return true
							end
	elseif num_calls == 3533333 -- day3_Night_4:40AM -- 3533333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30440)
						return true
							end
	elseif num_calls == 3541666 -- day3_Night_4:50AM -- 3541666.6666666666
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30450)
						return true
							end
	elseif num_calls == 3550000 -- day3_Night_5:00AM -- 3550000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30500)
						return true
							end
	elseif num_calls == 3558333 -- day3_Night_5:10AM -- 3558333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30510)
						return true
							end
	elseif num_calls == 3566666 -- day3_Night_5:20AM -- 3566666.6666666666
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30520)
						return true
							end
	elseif num_calls == 3575000 -- day3_Night_5:30AM -- 3575000
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30530)
						return true
							end
	elseif num_calls == 3583333 -- day3_Night_5:40AM -- 3583333.3333333333
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30540)
						return true
							end
	elseif num_calls == 3591666 -- day3_Night_5:50AM -- 3591666.6666666666
		then function map:on_draw(dst_surface)
					self.day3_night_overlay:draw(dst_surface)
					game:set_value("time", 30550)
						return true
							end
-- Day 4
	elseif num_calls == 3600000 -- day4_Dawn_6:00AM -- 3600000
		then function map:on_draw(dst_surface)
					self.day4_dawn01_overlay:draw(dst_surface)
					game:set_value("time", 40600)
						return true
							end
	elseif num_calls == 3608333 -- day4_Dawn_6:10AM -- 3608333.333333333333
		then function map:on_draw(dst_surface)
					self.day4_dawn02_overlay:draw(dst_surface)
					game:set_value("time", 40610)
						return true
							end
	elseif num_calls == 3616666 -- day4_Dawn_6:20AM -- 3616666.66666666666
		then function map:on_draw(dst_surface)
					self.day4_dawn03_overlay:draw(dst_surface)
					game:set_value("time", 40620)
						return true
							end
	elseif num_calls == 3625000 -- day4_Dawn_6:30AM -- 3625000
		then function map:on_draw(dst_surface)
					self.day4_dawn04_overlay:draw(dst_surface)
					game:set_value("time", 40630)
						return true
							end
	elseif num_calls == 3633333 -- day4_Dawn_6:40AM -- 3633333.33333333333
		then function map:on_draw(dst_surface)
					self.day4_dawn05_overlay:draw(dst_surface)
					game:set_value("time", 40640)
						return true
							end
	elseif num_calls == 3641666 -- day4_Dawn_6:50AM -- 3641666.66666666666
		then function map:on_draw(dst_surface)
					self.day4_dawn06_overlay:draw(dst_surface)
					game:set_value("time", 40650)
						return true
							end
	elseif num_calls == 3650000 -- day4_Dawn_7:00AM -- 3650000
		then function map:on_draw(dst_surface)
					self.day4_dawn07_overlay:draw(dst_surface)
					game:set_value("time", 40700)
						return true
							end
	elseif num_calls == 3658333 -- day4_Dawn_7:10AM -- 3658333.33333333333
		then function map:on_draw(dst_surface)
					self.day4_dawn08_overlay:draw(dst_surface)
					game:set_value("time", 40710)
						return true
							end
	elseif num_calls == 3666666 -- day4_Dawn_7:20AM -- 3666666.66666666666
		then function map:on_draw(dst_surface)
					self.day4_dawn09_overlay:draw(dst_surface)
					game:set_value("time", 40720)
						return true
							end
	elseif num_calls == 3675000 -- day4_Dawn_7:30AM -- 3675000
		then function map:on_draw(dst_surface)
					self.day4_dawn10_overlay:draw(dst_surface)
					game:set_value("time", 40730)
						return true
							end
	elseif num_calls == 3683333 -- day4_Dawn_7:40AM -- 3683333.33333333333
		then function map:on_draw(dst_surface)
					self.day4_dawn11_overlay:draw(dst_surface)
					game:set_value("time", 40740)
						return true
							end
	elseif num_calls == 3691666 -- day4_Dawn_7:50AM -- 3691666.66666666666
		then function map:on_draw(dst_surface)
					self.day4_dawn12_overlay:draw(dst_surface)
					game:set_value("time", 40750)
						return true
							end
	elseif num_calls == 3700000 -- day4_Day_8:00AM -- 3700000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 40800)
						return true
							end
	elseif num_calls == 3708333 -- day4_Day_8:10AM -- 3708333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 40810)
						return true
							end
	elseif num_calls == 3716666 -- day4_Day_8:20AM -- 3716666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 40820)
						return true
							end
	elseif num_calls == 3725000 -- day4_Day_8:30AM -- 3725000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 40830)
						return true
							end
	elseif num_calls == 3733333 -- day4_Day_8:40AM -- 3733333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 40840)
						return true
							end
	elseif num_calls == 3741666 -- day4_Day_8:50AM -- 3741666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 40850)
						return true
							end
	elseif num_calls == 3750000 -- day4_Day_9:00AM -- 3750000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 40900)
						return true
							end
	elseif num_calls == 3758333 -- day4_Day_9:10AM -- 3758333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 40910)
						return true
							end
	elseif num_calls == 3766666 -- day4_Day_9:20AM -- 3766666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 40920)
						return true
							end
	elseif num_calls == 3775000 -- day4_Day_9:30AM -- 3775000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 40930)
						return true
							end
	elseif num_calls == 3783333 -- day4_Day_9:40AM -- 3783333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 40940)
						return true
							end
	elseif num_calls == 3791666 -- day4_Day_9:50AM -- 3791666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 40950)
						return true
							end
	elseif num_calls == 3800000 -- day4_Day_10:00AM -- 3800000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41000)
						return true
							end
	elseif num_calls == 3808333 -- day4_Day_10:10AM -- 3808333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41010)
						return true
							end
	elseif num_calls == 3816666 -- day4_Day_10:20AM -- 3816666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41020)
						return true
							end
	elseif num_calls == 3825000 -- day4_Day_10:30AM -- 3825000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41030)
						return true
							end
	elseif num_calls == 3833333 -- day4_Day_10:40AM -- 3833333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41040)
						return true
							end
	elseif num_calls == 3841666 -- day4_Day_10:50AM -- 3841666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41050)
						return true
							end
	elseif num_calls == 3850000 -- day4_Day_11:00AM -- 3850000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41100)
						return true
							end
	elseif num_calls == 3858333 -- day4_Day_11:10AM -- 3858333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41110)
						return true
							end
	elseif num_calls == 3866666 -- day4_Day_11:20AM -- 3866666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41120)
						return true
							end
	elseif num_calls == 3875000 -- day4_Day_11:30AM -- 3875000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41130)
						return true
							end
	elseif num_calls == 3883333 -- day4_Day_11:40AM -- 3883333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41140)
						return true
							end
	elseif num_calls == 3891666 -- day4_Day_11:50AM -- 3891666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41150)
						return true
							end
	elseif num_calls == 3900000 -- day4_Day_12:00PM -- 3900000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41200)
						return true
							end
	elseif num_calls == 3908333 -- day4_Day_12:10PM -- 3908333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41210)
						return true
							end
	elseif num_calls == 3916666 -- day4_Day_12:20PM -- 3916666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41220)
						return true
							end
	elseif num_calls == 3925000 -- day4_Day_12:30PM -- 3925000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41230)
						return true
							end
	elseif num_calls == 3933333 -- day4_Day_12:40PM -- 3933333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41240)
						return true
							end
	elseif num_calls == 3941666 -- day4_Day_12:50PM -- 3941666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41250)
						return true
							end
	elseif num_calls == 3950000 -- day4_Day_1:00PM -- 3950000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41300)
						return true
							end
	elseif num_calls == 3958333 -- day4_Day_1:10PM -- 3958333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41310)
						return true
							end
	elseif num_calls == 3966666 -- day4_Day_1:20PM -- 3966666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41320)
						return true
							end
	elseif num_calls == 3975000 -- day4_Day_1:30PM -- 3975000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41330)
						return true
							end
	elseif num_calls == 3983333 -- day4_Day_1:40PM -- 3983333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41340)
						return true
							end
	elseif num_calls == 3991666 -- day4_Day_1:50PM -- 3991666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41350)
						return true
							end
	elseif num_calls == 4000000 -- day4_Day_2:00PM -- 4000000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41400)
						return true
							end
	elseif num_calls == 4008333 -- day4_Day_2:10PM -- 4008333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41410)
						return true
							end
	elseif num_calls == 4016666 -- day4_Day_2:20PM -- 4016666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41420)
						return true
							end
	elseif num_calls == 4025000 -- day4_Day_2:30PM -- 4025000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41430)
						return true
							end
	elseif num_calls == 4033333 -- day4_Day_2:40PM -- 4033333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41440)
						return true
							end
	elseif num_calls == 4041666 -- day4_Day_2:50PM -- 4041666.6666666666
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41450)
						return true
							end
	elseif num_calls == 4050000 -- day4_Day_3:00PM -- 4050000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41500)
						return true
							end
	elseif num_calls == 4058333 -- day4_Day_3:10PM -- 4058333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41510)
						return true
							end
	elseif num_calls == 4066666 -- day4_Day_3:20PM -- 4066666.6666666666
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41520)
						return true
							end
	elseif num_calls == 4075000 -- day4_Day_3:30PM -- 4075000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41530)
						return true
							end
	elseif num_calls == 4083333 -- day4_Day_3:40PM -- 4083333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41540)
						return true
							end
	elseif num_calls == 4091666 -- day4_Day_3:50PM -- 4091666.6666666666
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41550)
						return true
							end
	elseif num_calls == 4100000 -- day4_Day_4:00PM -- 4100000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41600)
						return true
							end
	elseif num_calls == 4108333 -- day4_Day_4:10PM -- 4108333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41610)
						return true
							end
	elseif num_calls == 4116666 -- day4_Day_4:20PM -- 4116666.6666666666
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41620)
						return true
							end
	elseif num_calls == 4125000 -- day4_Day_4:30PM -- 4125000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41630)
						return true
							end
	elseif num_calls == 4133333 -- day4_Day_4:40PM -- 4133333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41640)
						return true
							end
	elseif num_calls == 4141666 -- day4_Day_4:50PM -- 4141666.6666666666
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41650)
						return true
							end
	elseif num_calls == 4150000 -- day4_Day_5:00PM -- 4150000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41700)
						return true
							end
	elseif num_calls == 4158333 -- day4_Day_5:10PM -- 4158333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41710)
						return true
							end
	elseif num_calls == 4166666 -- day4_Day_5:20PM -- 4166666.6666666666
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41720)
						return true
							end
	elseif num_calls == 4175000 -- day4_Day_5:30PM -- 4175000
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41730)
						return true
							end
	elseif num_calls == 4183333 -- day4_Day_5:40PM -- 4183333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41740)
						return true
							end
	elseif num_calls == 4191666 -- day4_Day_5:50PM -- 4191666.6666666666
		then function map:on_draw(dst_surface)
					self.day4_day_overlay:draw(dst_surface)
					game:set_value("time", 41750)
						return true
							end
	elseif num_calls == 4200000 -- day4_Dusk_6:00PM -- 4200000
		then function map:on_draw(dst_surface)
					self.day4_dusk01_overlay:draw(dst_surface)
					game:set_value("time", 41800)
						return true
							end
	elseif num_calls == 4208333 -- day4_Dusk_6:10PM -- 4208333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_dusk02_overlay:draw(dst_surface)
					game:set_value("time", 41810)
						return true
							end
	elseif num_calls == 4216666 -- day4_Dusk_6:20PM -- 4216666.66666666666
		then function map:on_draw(dst_surface)
					self.day4_dusk03_overlay:draw(dst_surface)
					game:set_value("time", 41820)
						return true
							end
	elseif num_calls == 4225000 -- day4_Dusk_6:30PM -- 4225000
		then function map:on_draw(dst_surface)
					self.day4_dusk04_overlay:draw(dst_surface)
					game:set_value("time", 41830)
						return true
							end
	elseif num_calls == 4233333 -- day4_Dusk_6:40PM -- 4233333.33333333333
		then function map:on_draw(dst_surface)
					self.day4_dusk05_overlay:draw(dst_surface)
					game:set_value("time", 41840)
						return true
							end
	elseif num_calls == 4241666 -- day4_Dusk_6:50PM -- 4241666.66666666666
		then function map:on_draw(dst_surface)
					self.day4_dusk06_overlay:draw(dst_surface)
					game:set_value("time", 41850)
						return true
							end
	elseif num_calls == 4250000 -- day4_Dusk_7:00PM -- 4250000
		then function map:on_draw(dst_surface)
					self.day4_dusk07_overlay:draw(dst_surface)
					game:set_value("time", 41900)
						return true
							end
	elseif num_calls == 4258333 -- day4_Dusk_7:10PM -- 4258333.33333333333
		then function map:on_draw(dst_surface)
					self.day4_dusk08_overlay:draw(dst_surface)
					game:set_value("time", 41910)
						return true
							end
	elseif num_calls == 4266666 -- day4_Dusk_7:20PM -- 4266666.66666666666
		then function map:on_draw(dst_surface)
					self.day4_dusk09_overlay:draw(dst_surface)
					game:set_value("time", 41920)
						return true
							end
	elseif num_calls == 4275000 -- day4_Dusk_7:30PM -- 4275000
		then function map:on_draw(dst_surface)
					self.day4_dusk10_overlay:draw(dst_surface)
					game:set_value("time", 41930)
						return true
							end
	elseif num_calls == 4283333 -- day4_Dusk_7:40PM -- 4283333.33333333333
		then function map:on_draw(dst_surface)
					self.day4_dusk11_overlay:draw(dst_surface)
					game:set_value("time", 41940)
						return true
							end
	elseif num_calls == 4291666 -- day4_Dusk_7:50PM -- 4291666.66666666666
		then function map:on_draw(dst_surface)
					self.day4_dusk12_overlay:draw(dst_surface)
					game:set_value("time", 41950)
						return true
							end
	elseif num_calls == 4300000 -- day4_Night_8:00PM -- 43000000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42000)
						return true
							end
	elseif num_calls == 4308333 -- day4_Night_8:10PM -- 43008333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42010)
						return true
							end
	elseif num_calls == 4316666 -- day4_Night_8:20PM -- 4316666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42020)
						return true
							end
	elseif num_calls == 4325000 -- day4_Night_8:30PM -- 4325000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42030)
						return true
							end
	elseif num_calls == 4333333 -- day4_Night_8:40PM -- 4333333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42040)
						return true
							end
	elseif num_calls == 4341666 -- day4_Night_8:50PM -- 4341666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42050)
						return true
							end
	elseif num_calls == 4350000 -- day4_Night_9:00PM -- 4350000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42100)
						return true
							end
	elseif num_calls == 4358333 -- day4_Night_9:10PM -- 4358333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42110)
						return true
							end
	elseif num_calls == 4366666 -- day4_Night_9:20PM -- 4366666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42120)
						return true
							end
	elseif num_calls == 4375000 -- day4_Night_9:30PM -- 4375000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42130)
						return true
							end
	elseif num_calls == 4383333 -- day4_Night_9:40PM -- 4383333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42140)
						return true
							end
	elseif num_calls == 4391666 -- day4_Night_9:50PM -- 4391666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42150)
						return true
							end
	elseif num_calls == 4400000 -- day4_Night_10:00PM -- 4400000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42200)
						return true
							end
	elseif num_calls == 4408333 -- day4_Night_10:10PM -- 4408333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42210)
						return true
							end
	elseif num_calls == 4416666 -- day4_Night_10:20PM -- 4416666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42220)
						return true
							end
	elseif num_calls == 4425000 -- day4_Night_10:30PM -- 4425000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42230)
						return true
							end
	elseif num_calls == 4433333 -- day4_Night_10:40PM -- 4433333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42240)
						return true
							end
	elseif num_calls == 4441666 -- day4_Night_10:50PM -- 4441666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42250)
						return true
							end
	elseif num_calls == 4450000 -- day4_Night_11:00PM -- 4450000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42300)
						return true
							end
	elseif num_calls == 4458333 -- day4_Night_11:10PM -- 4458333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42310)
						return true
							end
	elseif num_calls == 4466666 -- day4_Night_11:20PM -- 4466666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42320)
						return true
							end
	elseif num_calls == 4475000 -- day4_Night_11:30PM -- 4475000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42330)
						return true
							end
	elseif num_calls == 4483333 -- day4_Night_11:40PM -- 4483333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42340)
						return true
							end
	elseif num_calls == 4491666 -- day4_Night_11:50PM -- 4491666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 42350)
						return true
							end
	elseif num_calls == 4500000 -- day4_Night_12:00AM -- 4500000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40000)
						return true
							end
	elseif num_calls == 4508333 -- day4_Night_12:10AM -- 4508333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40010)
						return true
							end
	elseif num_calls == 4516666 -- day4_Night_12:20AM -- 4516666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40020)
						return true
							end
	elseif num_calls == 4525000 -- day4_Night_12:30AM -- 4525000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40030)
						return true
							end
	elseif num_calls == 4533333 -- day4_Night_12:40AM -- 4533333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40040)
						return true
							end
	elseif num_calls == 4541666 -- day4_Night_12:50AM -- 4541666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40050)
						return true
							end
	elseif num_calls == 4550000 -- day4_Night_1:00AM -- 4550000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40100)
						return true
							end
	elseif num_calls == 4558333 -- day4_Night_1:10AM -- 4558333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40110)
						return true
							end
	elseif num_calls == 4566666 -- day4_Night_1:20AM -- 4566666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40120)
						return true
							end
	elseif num_calls == 4575000 -- day4_Night_1:30AM -- 4575000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40130)
						return true
							end
	elseif num_calls == 4583333 -- day4_Night_1:40AM -- 4583333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40140)
						return true
							end
	elseif num_calls == 4591666 -- day4_Night_1:50AM -- 4591666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40150)
						return true
							end
	elseif num_calls == 4600000 -- day4_Night_2:00AM -- 4600000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40200)
						return true
							end
	elseif num_calls == 4608333 -- day4_Night_2:10AM -- 4608333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40210)
						return true
							end
	elseif num_calls == 4616666 -- day4_Night_2:20AM -- 4616666.6666666667
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40220)
						return true
							end
	elseif num_calls == 4625000 -- day4_Night_2:30AM -- 4625000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40230)
						return true
							end
	elseif num_calls == 4633333 -- day4_Night_2:40AM -- 4633333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40240)
						return true
							end
	elseif num_calls == 4641666 -- day4_Night_2:50AM -- 4641666.6666666666
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40250)
						return true
							end
	elseif num_calls == 4650000 -- day4_Night_3:00AM -- 4650000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40300)
						return true
							end
	elseif num_calls == 4658333 -- day4_Night_3:10AM -- 4658333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40310)
						return true
							end
	elseif num_calls == 4666666 -- day4_Night_3:20AM -- 4666666.6666666666
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40320)
						return true
							end
	elseif num_calls == 4675000 -- day4_Night_3:30AM -- 4675000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40330)
						return true
							end
	elseif num_calls == 4683333 -- day4_Night_3:40AM -- 4683333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40340)
						return true
							end
	elseif num_calls == 4691666 -- day4_Night_3:50AM -- 4691666.6666666666
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40350)
						return true
							end
	elseif num_calls == 4700000 -- day4_Night_4:00AM -- 4700000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40400)
						return true
							end
	elseif num_calls == 4708333 -- day4_Night_4:10AM -- 4708333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40410)
						return true
							end
	elseif num_calls == 4716666 -- day4_Night_4:20AM -- 4716666.6666666666
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40420)
						return true
							end
	elseif num_calls == 4725000 -- day4_Night_4:30AM -- 4725000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40430)
						return true
							end
	elseif num_calls == 4733333 -- day4_Night_4:40AM -- 4733333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40440)
						return true
							end
	elseif num_calls == 4741666 -- day4_Night_4:50AM -- 4741666.6666666666
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40450)
						return true
							end
	elseif num_calls == 4750000 -- day4_Night_5:00AM -- 4750000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40500)
						return true
							end
	elseif num_calls == 4758333 -- day4_Night_5:10AM -- 4758333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40510)
						return true
							end
	elseif num_calls == 4766666 -- day4_Night_5:20AM -- 4766666.6666666666
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40520)
						return true
							end
	elseif num_calls == 4775000 -- day4_Night_5:30AM -- 4775000
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40530)
						return true
							end
	elseif num_calls == 4783333 -- day4_Night_5:40AM -- 4783333.3333333333
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40540)
						return true
							end
	elseif num_calls == 4791666 -- day4_Night_5:50AM -- 4791666.6666666666
		then function map:on_draw(dst_surface)
					self.day4_night_overlay:draw(dst_surface)
					game:set_value("time", 40550)
						return true
							end
	elseif num_calls == 4799998 -- place a 2 tick delay
	    then num_calls = -2 -- Resets the lunar cycle
	        return true
    end
            return true
    end)
-- End map timer


-- Define level transition colours.
-- Day 1 start
if num_calls == nil then num_calls = 99999 -- sets time to 8:00AM - fixes hues when loading game saves for some reason but it also resets the time to zero
	elseif num_calls > 0 and num_calls < 8333 then
		function map:on_draw(dst_surface)
			self.day1_dawn01_overlay:draw(dst_surface)
		end
	elseif num_calls > 8333 and num_calls < 16666 then
		function map:on_draw(dst_surface)
			self.day1_dawn02_overlay:draw(dst_surface)
		end
	elseif num_calls > 16666 and num_calls < 25000 then
		function map:on_draw(dst_surface)
			self.day1_dawn03_overlay:draw(dst_surface)
		end
	elseif num_calls > 25000 and num_calls < 33333 then
		function map:on_draw(dst_surface)
			self.day1_dawn04_overlay:draw(dst_surface)
		end
	elseif num_calls > 33333 and num_calls < 41666 then
		function map:on_draw(dst_surface)
			self.day1_dawn05_overlay:draw(dst_surface)
		end
	elseif num_calls > 41666 and num_calls < 50000 then
		function map:on_draw(dst_surface)
			self.day1_dawn06_overlay:draw(dst_surface)
		end
	elseif num_calls > 50000 and num_calls < 58333 then
		function map:on_draw(dst_surface)
			self.day1_dawn07_overlay:draw(dst_surface)
		end
	elseif num_calls > 58333 and num_calls < 66666 then
		function map:on_draw(dst_surface)
			self.day1_dawn08_overlay:draw(dst_surface)
		end
	elseif num_calls > 66666 and num_calls < 75000 then
		function map:on_draw(dst_surface)
			self.day1_dawn09_overlay:draw(dst_surface)
		end
	elseif num_calls > 75000 and num_calls < 83333 then
		function map:on_draw(dst_surface)
			self.day1_dawn10_overlay:draw(dst_surface)
		end
	elseif num_calls > 83333 and num_calls < 91666 then
		function map:on_draw(dst_surface)
			self.day1_dawn11_overlay:draw(dst_surface)
		end
	elseif num_calls > 91666 and num_calls < 100000 then
		function map:on_draw(dst_surface)
			self.day1_dawn12_overlay:draw(dst_surface)
		end
	elseif num_calls > 100000 and num_calls < 600000 then
		function map:on_draw(dst_surface)
			self.day1_day_overlay:draw(dst_surface)
		end
	elseif num_calls > 600000 and num_calls < 608333 then
		function map:on_draw(dst_surface)
			self.day1_dusk01_overlay:draw(dst_surface)
		end
	elseif num_calls > 608333 and num_calls < 616666 then
		function map:on_draw(dst_surface)
			self.day1_dusk02_overlay:draw(dst_surface)
		end
	elseif num_calls > 616666 and num_calls < 625000 then
		function map:on_draw(dst_surface)
			self.day1_dusk03_overlay:draw(dst_surface)
		end
	elseif num_calls > 625000 and num_calls < 633333 then
		function map:on_draw(dst_surface)
			self.day1_dusk04_overlay:draw(dst_surface)
		end
	elseif num_calls > 633333 and num_calls < 641666 then
		function map:on_draw(dst_surface)
			self.day1_dusk05_overlay:draw(dst_surface)
		end
	elseif num_calls > 641666 and num_calls < 650000 then
		function map:on_draw(dst_surface)
			self.day1_dusk06_overlay:draw(dst_surface)
		end
	elseif num_calls > 650000 and num_calls < 658333 then
		function map:on_draw(dst_surface)
			self.day1_dusk07_overlay:draw(dst_surface)
		end
	elseif num_calls > 658333 and num_calls < 666666 then
		function map:on_draw(dst_surface)
			self.day1_dusk08_overlay:draw(dst_surface)
		end
	elseif num_calls > 666666 and num_calls < 675000 then
		function map:on_draw(dst_surface)
			self.day1_dusk09_overlay:draw(dst_surface)
		end
	elseif num_calls > 675000 and num_calls < 683333 then
		function map:on_draw(dst_surface)
			self.day1_dusk10_overlay:draw(dst_surface)
		end
	elseif num_calls > 683333 and num_calls < 691666 then
		function map:on_draw(dst_surface)
			self.day1_dusk11_overlay:draw(dst_surface)
		end
	elseif num_calls > 691666 and num_calls < 700000 then
		function map:on_draw(dst_surface)
			self.day1_dusk12_overlay:draw(dst_surface)
		end
	elseif num_calls > 700000 and num_calls < 1200000 then
		function map:on_draw(dst_surface)
			self.day1_night_overlay:draw(dst_surface)
		end
-- Day 1 over
-- Day 2 start
	elseif num_calls > 1200000 and num_calls < 1208333 then
		function map:on_draw(dst_surface)
			self.day2_dawn01_overlay:draw(dst_surface)
		end
	elseif num_calls > 1208333 and num_calls < 1216666 then
		function map:on_draw(dst_surface)
			self.day2_dawn02_overlay:draw(dst_surface)
		end
	elseif num_calls > 1216666 and num_calls < 1225000 then
		function map:on_draw(dst_surface)
			self.day2_dawn03_overlay:draw(dst_surface)
		end
	elseif num_calls > 1225000 and num_calls < 1233333 then
		function map:on_draw(dst_surface)
			self.day2_dawn04_overlay:draw(dst_surface)
		end
	elseif num_calls > 1233333 and num_calls < 1241666 then
		function map:on_draw(dst_surface)
			self.day2_dawn05_overlay:draw(dst_surface)
		end
	elseif num_calls > 1241666 and num_calls < 1250000 then
		function map:on_draw(dst_surface)
			self.day2_dawn06_overlay:draw(dst_surface)
		end
	elseif num_calls > 1250000 and num_calls < 1258333 then
		function map:on_draw(dst_surface)
			self.day2_dawn07_overlay:draw(dst_surface)
		end
	elseif num_calls > 1258333 and num_calls < 1266666 then
		function map:on_draw(dst_surface)
			self.day2_dawn08_overlay:draw(dst_surface)
		end
	elseif num_calls > 1266666 and num_calls < 1275000 then
		function map:on_draw(dst_surface)
			self.day2_dawn09_overlay:draw(dst_surface)
		end
	elseif num_calls > 1275000 and num_calls < 1283333 then
		function map:on_draw(dst_surface)
			self.day2_dawn10_overlay:draw(dst_surface)
		end
	elseif num_calls > 1283333 and num_calls < 1291666 then
		function map:on_draw(dst_surface)
			self.day2_dawn11_overlay:draw(dst_surface)
		end
	elseif num_calls > 1291666 and num_calls < 1300000 then
		function map:on_draw(dst_surface)
			self.day2_dawn12_overlay:draw(dst_surface)
		end
	elseif num_calls > 1300000 and num_calls < 1800000 then
		function map:on_draw(dst_surface)
			self.day2_day_overlay:draw(dst_surface)
		end
	elseif num_calls > 1800000 and num_calls < 1808333 then
		function map:on_draw(dst_surface)
			self.day2_dusk01_overlay:draw(dst_surface)
		end
	elseif num_calls > 1808333 and num_calls < 1816666 then
		function map:on_draw(dst_surface)
			self.day2_dusk02_overlay:draw(dst_surface)
		end
	elseif num_calls > 1816666 and num_calls < 1825000 then
		function map:on_draw(dst_surface)
			self.day2_dusk03_overlay:draw(dst_surface)
		end
	elseif num_calls > 1825000 and num_calls < 1833333 then
		function map:on_draw(dst_surface)
			self.day2_dusk04_overlay:draw(dst_surface)
		end
	elseif num_calls > 1833333 and num_calls < 1841666 then
		function map:on_draw(dst_surface)
			self.day2_dusk05_overlay:draw(dst_surface)
		end
	elseif num_calls > 1841666 and num_calls < 1850000 then
		function map:on_draw(dst_surface)
			self.day2_dusk06_overlay:draw(dst_surface)
		end
	elseif num_calls > 1850000 and num_calls < 1858333 then
		function map:on_draw(dst_surface)
			self.day2_dusk07_overlay:draw(dst_surface)
		end
	elseif num_calls > 1858333 and num_calls < 1866666 then
		function map:on_draw(dst_surface)
			self.day2_dusk08_overlay:draw(dst_surface)
		end
	elseif num_calls > 1866666 and num_calls < 1875000 then
		function map:on_draw(dst_surface)
			self.day2_dusk09_overlay:draw(dst_surface)
		end
	elseif num_calls > 1875000 and num_calls < 1883333 then
		function map:on_draw(dst_surface)
			self.day2_dusk10_overlay:draw(dst_surface)
		end
	elseif num_calls > 1883333 and num_calls < 1891666 then
		function map:on_draw(dst_surface)
			self.day2_dusk11_overlay:draw(dst_surface)
		end
	elseif num_calls > 1891666 and num_calls < 1900000 then
		function map:on_draw(dst_surface)
			self.day2_dusk12_overlay:draw(dst_surface)
		end
	elseif num_calls > 1900000 and num_calls < 2400000 then
		function map:on_draw(dst_surface)
			self.day2_night_overlay:draw(dst_surface)
		end
-- Day 2 over
-- Day 3 start
	elseif num_calls > 2400000 and num_calls < 2408333 then
		function map:on_draw(dst_surface)
			self.day3_dawn01_overlay:draw(dst_surface)
		end
	elseif num_calls > 2408333 and num_calls < 2416666 then
		function map:on_draw(dst_surface)
			self.day3_dawn02_overlay:draw(dst_surface)
		end
	elseif num_calls > 2416666 and num_calls < 2425000 then
		function map:on_draw(dst_surface)
			self.day3_dawn03_overlay:draw(dst_surface)
		end
	elseif num_calls > 2425000 and num_calls < 2433333 then
		function map:on_draw(dst_surface)
			self.day3_dawn04_overlay:draw(dst_surface)
		end
	elseif num_calls > 2433333 and num_calls < 2441666 then
		function map:on_draw(dst_surface)
			self.day3_dawn05_overlay:draw(dst_surface)
		end
	elseif num_calls > 2441666 and num_calls < 2450000 then
		function map:on_draw(dst_surface)
			self.day3_dawn06_overlay:draw(dst_surface)
		end
	elseif num_calls > 2450000 and num_calls < 2458333 then
		function map:on_draw(dst_surface)
			self.day3_dawn07_overlay:draw(dst_surface)
		end
	elseif num_calls > 2458333 and num_calls < 2466666 then
		function map:on_draw(dst_surface)
			self.day3_dawn08_overlay:draw(dst_surface)
		end
	elseif num_calls > 2466666 and num_calls < 2475000 then
		function map:on_draw(dst_surface)
			self.day3_dawn09_overlay:draw(dst_surface)
		end
	elseif num_calls > 2475000 and num_calls < 2483333 then
		function map:on_draw(dst_surface)
			self.day3_dawn10_overlay:draw(dst_surface)
		end
	elseif num_calls > 2483333 and num_calls < 2491666 then
		function map:on_draw(dst_surface)
			self.day3_dawn11_overlay:draw(dst_surface)
		end
	elseif num_calls > 2491666 and num_calls < 2500000 then
		function map:on_draw(dst_surface)
			self.day3_dawn12_overlay:draw(dst_surface)
		end
	elseif num_calls > 2500000 and num_calls < 3000000 then
		function map:on_draw(dst_surface)
			self.day3_day_overlay:draw(dst_surface)
		end
	elseif num_calls > 3000000 and num_calls < 3008333 then
		function map:on_draw(dst_surface)
			self.day3_dusk01_overlay:draw(dst_surface)
		end
	elseif num_calls > 3008333 and num_calls < 3016666 then
		function map:on_draw(dst_surface)
			self.day3_dusk02_overlay:draw(dst_surface)
		end
	elseif num_calls > 3016666 and num_calls < 3025000 then
		function map:on_draw(dst_surface)
			self.day3_dusk03_overlay:draw(dst_surface)
		end
	elseif num_calls > 3025000 and num_calls < 3033333 then
		function map:on_draw(dst_surface)
			self.day3_dusk04_overlay:draw(dst_surface)
		end
	elseif num_calls > 3033333 and num_calls < 3041666 then
		function map:on_draw(dst_surface)
			self.day3_dusk05_overlay:draw(dst_surface)
		end
	elseif num_calls > 3041666 and num_calls < 3050000 then
		function map:on_draw(dst_surface)
			self.day3_dusk06_overlay:draw(dst_surface)
		end
	elseif num_calls > 3050000 and num_calls < 3058333 then
		function map:on_draw(dst_surface)
			self.day3_dusk07_overlay:draw(dst_surface)
		end
	elseif num_calls > 3058333 and num_calls < 3066666 then
		function map:on_draw(dst_surface)
			self.day3_dusk08_overlay:draw(dst_surface)
		end
	elseif num_calls > 3066666 and num_calls < 3075000 then
		function map:on_draw(dst_surface)
			self.day3_dusk09_overlay:draw(dst_surface)
		end
	elseif num_calls > 3075000 and num_calls < 3083333 then
		function map:on_draw(dst_surface)
			self.day3_dusk10_overlay:draw(dst_surface)
		end
	elseif num_calls > 3083333 and num_calls < 3091666 then
		function map:on_draw(dst_surface)
			self.day3_dusk11_overlay:draw(dst_surface)
		end
	elseif num_calls > 3091666 and num_calls < 3100000 then
		function map:on_draw(dst_surface)
			self.day3_dusk12_overlay:draw(dst_surface)
		end
	elseif num_calls > 3100000 and num_calls < 3600000 then
		function map:on_draw(dst_surface)
			self.day3_night_overlay:draw(dst_surface)
		end
-- Day 3 over
-- Day 4 start
	elseif num_calls > 3600000 and num_calls < 3608333 then
		function map:on_draw(dst_surface)
			self.day4_dawn01_overlay:draw(dst_surface)
		end
	elseif num_calls > 3608333 and num_calls < 3616666 then
		function map:on_draw(dst_surface)
			self.day4_dawn02_overlay:draw(dst_surface)
		end
	elseif num_calls > 3616666 and num_calls < 3625000 then
		function map:on_draw(dst_surface)
			self.day4_dawn03_overlay:draw(dst_surface)
		end
	elseif num_calls > 3625000 and num_calls < 3633333 then
		function map:on_draw(dst_surface)
			self.day4_dawn04_overlay:draw(dst_surface)
		end
	elseif num_calls > 3633333 and num_calls < 3641666 then
		function map:on_draw(dst_surface)
			self.day4_dawn05_overlay:draw(dst_surface)
		end
	elseif num_calls > 3641666 and num_calls < 3650000 then
		function map:on_draw(dst_surface)
			self.day4_dawn06_overlay:draw(dst_surface)
		end
	elseif num_calls > 3650000 and num_calls < 3658333 then
		function map:on_draw(dst_surface)
			self.day4_dawn07_overlay:draw(dst_surface)
		end
	elseif num_calls > 3658333 and num_calls < 3666666 then
		function map:on_draw(dst_surface)
			self.day4_dawn08_overlay:draw(dst_surface)
		end
	elseif num_calls > 3666666 and num_calls < 3675000 then
		function map:on_draw(dst_surface)
			self.day4_dawn09_overlay:draw(dst_surface)
		end
	elseif num_calls > 3675000 and num_calls < 3683333 then
		function map:on_draw(dst_surface)
			self.day4_dawn10_overlay:draw(dst_surface)
		end
	elseif num_calls > 3683333 and num_calls < 3691666 then
		function map:on_draw(dst_surface)
			self.day4_dawn11_overlay:draw(dst_surface)
		end
	elseif num_calls > 3691666 and num_calls < 3700000 then
		function map:on_draw(dst_surface)
			self.day4_dawn12_overlay:draw(dst_surface)
		end
	elseif num_calls > 3700000 and num_calls < 4200000 then
		function map:on_draw(dst_surface)
			self.day4_day_overlay:draw(dst_surface)
		end
	elseif num_calls > 4200000 and num_calls < 4208333 then
		function map:on_draw(dst_surface)
			self.day4_dusk01_overlay:draw(dst_surface)
		end
	elseif num_calls > 4208333 and num_calls < 4216666 then
		function map:on_draw(dst_surface)
			self.day4_dusk02_overlay:draw(dst_surface)
		end
	elseif num_calls > 4216666 and num_calls < 4225000 then
		function map:on_draw(dst_surface)
			self.day4_dusk03_overlay:draw(dst_surface)
		end
	elseif num_calls > 4225000 and num_calls < 4233333 then
		function map:on_draw(dst_surface)
			self.day4_dusk04_overlay:draw(dst_surface)
		end
	elseif num_calls > 4233333 and num_calls < 4241666 then
		function map:on_draw(dst_surface)
			self.day4_dusk05_overlay:draw(dst_surface)
		end
	elseif num_calls > 4241666 and num_calls < 4250000 then
		function map:on_draw(dst_surface)
			self.day4_dusk06_overlay:draw(dst_surface)
		end
	elseif num_calls > 4250000 and num_calls < 4258333 then
		function map:on_draw(dst_surface)
			self.day4_dusk07_overlay:draw(dst_surface)
		end
	elseif num_calls > 4258333 and num_calls < 4266666 then
		function map:on_draw(dst_surface)
			self.day4_dusk08_overlay:draw(dst_surface)
		end
	elseif num_calls > 4266666 and num_calls < 4275000 then
		function map:on_draw(dst_surface)
			self.day4_dusk09_overlay:draw(dst_surface)
		end
	elseif num_calls > 4275000 and num_calls < 4283333 then
		function map:on_draw(dst_surface)
			self.day4_dusk10_overlay:draw(dst_surface)
		end
	elseif num_calls > 4283333 and num_calls < 4291666 then
		function map:on_draw(dst_surface)
			self.day4_dusk11_overlay:draw(dst_surface)
		end
	elseif num_calls > 4291666 and num_calls < 4300000 then
		function map:on_draw(dst_surface)
			self.day4_dusk12_overlay:draw(dst_surface)
		end
	elseif num_calls > 4300000 and num_calls < 5000000 then
		function map:on_draw(dst_surface)
			self.day4_night_overlay:draw(dst_surface)
		end
-- Day 4 over
	end
-- End level transition colours.

end