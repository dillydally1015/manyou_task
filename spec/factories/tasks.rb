# 「FactoryBotを使用します」という記述
FactoryBot.define do
  # 作成するテストデータの名前を「task」とします
  # （実際に存在するクラス名と一致するテストデータの名前をつければ、そのクラスのテストデータを自動で作成します）
  factory :task do
    id { 1 }
    name { 'Factoryで作ったデフォルトのタイトル1' }
    detail { 'Factoryで作ったデフォルトのコンテント1' }
    deadline { DateTime.now }
    status { 0 }
    priority { 0 }
    user_id { 1 }
  end
  # 作成するテストデータの名前を「second_task」とします
  # （存在しないクラス名の名前をつける場合、オプションで「このクラスのテストデータにしてください」と指定します）
  factory :second_task, class: Task do
    id { 2 }
    name { 'Factoryで作ったデフォルトのタイトル2' }
    detail { 'Factoryで作ったデフォルトのコンテント2' }
    deadline { DateTime.now + 1 }
    status { 1 }
    priority { 1 }
    user_id { 1 }
  end

  factory :third_task, class: Task do
    id { 3 }
    name { 'Factoryで作ったデフォルトのタイトル3' }
    detail { 'Factoryで作ったデフォルトのコンテント3' }
    deadline { DateTime.now + 2 }
    status { 2 }
    priority { 2 }
    user_id { 1 }
  end
end
