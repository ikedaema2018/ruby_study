require './common'

diary = Diary.find_or_create_by(date: Date.today, text: "今日もいい日でした")
diary.increment!(:count)