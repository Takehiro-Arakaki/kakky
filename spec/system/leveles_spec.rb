FactoryBot.define do
  factory :level do
    name { 'テストレベル' }
    description { 'Rspc&Capybara&FactoryBotを準備する' }
    user
  end
end

