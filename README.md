# Forecaster

Sample rails app for forecasting weather

## Installation

Requirements
- RVM
- ruby 2.7.1
- rails
- bundler

Clone this repo and run

```bash
bundle install
```

Install database

```
rails db:migrate
```

Get an API token from [Weather API](https://www.weatherapi.com/)

Export the token as

```
export WEATHER_API_KEY=xxxx
```

Start the app

```
rails start
```
