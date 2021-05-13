Sentry.init do |config|
  config.dsn = 'https://7dae2632885d4addbc8c79b876707785@o659011.ingest.sentry.io/5763866'
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # Set tracesSampleRate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production
  config.traces_sample_rate = 0.5
  # or
  config.traces_sampler = lambda do |context|
    true
  end
end