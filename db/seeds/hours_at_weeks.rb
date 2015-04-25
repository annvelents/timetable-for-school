Group.all.each do |group|
  if group.name.include?('5')
           # 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19
    hours = [3, 2, 3, 2, 3, 5, 0, 1, 2, 0, 0, 0, 0, 0, 0, 1, 1, 0, 2, 0]
    hours.each_with_index do |hour, id|
      HoursAtWeek.create!({count_of_hours: hour, group_id: group.id, subject_id: id+1})
    end
  elsif group.name.include?('6')
           # 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19
    hours = [3, 2, 3, 2, 3, 5, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 2, 0]
    hours.each_with_index do |hour, id|
      HoursAtWeek.create!({count_of_hours: hour, group_id: group.id, subject_id: id+1})
    end
  elsif group.name.include?('7')
           # 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19
    hours = [2, 1, 2, 1, 3, 5, 1, 0, 1, 1, 0, 1, 2, 2, 2, 0, 1, 0, 2, 0]
    hours.each_with_index do |hour, id|
      HoursAtWeek.create!({count_of_hours: hour, group_id: group.id, subject_id: id+1})
    end
  elsif group.name.include?('8')
           # 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19
    hours = [2, 1, 2, 1, 3, 5, 1, 0, 1, 1, 0, 2, 2, 2, 2, 0, 1, 0, 2, 0]
    hours.each_with_index do |hour, id|
      HoursAtWeek.create!({count_of_hours: hour, group_id: group.id, subject_id: id+1})
    end
  elsif group.name.include?('9')
           # 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19
    hours = [2, 1, 2, 1, 3, 5, 1, 0, 1, 1, 1, 1, 2, 2, 2, 0, 1, 1, 2, 0]
    hours.each_with_index do |hour, id|
      HoursAtWeek.create!({count_of_hours: hour, group_id: group.id, subject_id: id+1})
    end
  elsif group.name.include?('10')
           # 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19
    hours = [2, 1, 2, 1, 3, 5, 1, 0, 1, 1, 1, 1, 2, 3, 2, 0, 1, 0, 2, 0]
    hours.each_with_index do |hour, id|
      HoursAtWeek.create!({count_of_hours: hour, group_id: group.id, subject_id: id+1})
    end
  elsif group.name.include?('11')
           # 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19
    hours = [2, 1, 2, 1, 3, 5, 1, 0, 1, 1, 1, 1, 2, 3, 2, 0, 1, 0, 2, 1]
    hours.each_with_index do |hour, id|
      HoursAtWeek.create!({count_of_hours: hour, group_id: group.id, subject_id: id+1})
    end
  end
end


# 0 - "Белорусский язык",
# 1 - "Белорусская литература",
# 2 - "Русский язык",
# 3 - "Русская литература",
# 4 - "Иностранный язык",
# 5 - "Математика",
# 6 - "Информатика",
# 7 - "Человек и мир",
# 8 - "Всемирная история",
# 9 - "История Беларуси",
# 10 - "Обществоведение",
# 11 - "География",
# 12 - "Биология",
# 13 - "Физика",
# 14 - "Химия",
# 15 - "Изобразительное искусство",
# 16 - "Трудовое обучение",
# 17 - "Черчение",
# 18 - "Физическая культура и здоровье",
# 19 - "Фстрономия"
