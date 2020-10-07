Rails.application.routes.draw do
  telegram_webhook TelegramWeatherController, :weather
  telegram_webhook TelegramFortuneController, :fortune
  # telegram_webhooks firstbot: TelegramBot::FirstbotController,
  #                   secondbot: TelegramBot::SecondbotController
  root to: "home#index"
end
