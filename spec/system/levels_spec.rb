FactoryBot.define do
  factory :levels do
    name { 'テストレベル' }
    description { 'Rspc&Capybara&FactoryBotを準備する' }
    user
  end
end

