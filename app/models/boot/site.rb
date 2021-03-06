module Boot
  class Site
    include LocalesHelper
    include Routing
    include AngularHelper

    def payload
      @payload ||= {
        version:             Loomio::Version.current,
        environment:         Rails.env,
        permittedParams:     PermittedParamsSerializer.new({}),
        locales:             ActiveModel::ArraySerializer.new(supported_locales, each_serializer: LocaleSerializer, root: false),
        defaultLocale:       I18n.locale,
        momentLocales:       AppConfig.moment_locales,
        newsletterEnabled:   ENV['NEWSLETTER_ENABLED'],
        recaptchaKey:        ENV['RECAPTCHA_APP_KEY'],
        baseUrl:             root_url,
        contactEmail:        ENV['SUPPORT_EMAIL'],
        plugins:             Plugins::Repository.to_config,
        theme:               AppConfig.theme,
        regex: {
          url:               JsRegex.new(AppConfig::URL_REGEX),
          email:             JsRegex.new(AppConfig::EMAIL_REGEX)
        },
        features: {
          group:             AppConfig.group_features,
          app:               AppConfig.app_features
        },
        inlineTranslation: {
          isAvailable:       false,
          supportedLangs:    AppConfig.translate_languages
        },
        pageSize: {
          default:         ENV.fetch('DEFAULT_PAGE_SIZE', 30),
          groupThreads:    ENV.fetch('GROUP_PAGE_SIZE',   30),
          threadItems:     ENV.fetch('THREAD_PAGE_SIZE',  10),
          exploreGroups:   ENV.fetch('EXPLORE_PAGE_SIZE', 10)
        },
        flashTimeout: {
          short:           ENV.fetch('FLASH_TIMEOUT_SHORT', 3500).to_i,
          long:            ENV.fetch('FLASH_TIMEOUT_LONG', 2147483645).to_i
        },
        drafts: {
          debounce:        ENV.fetch('LOOMIO_DRAFT_DEBOUNCE', 750).to_i
        },
        searchFilters: {
          status: %w(active closed).freeze
        },
        emojis: {
          defaults:        AppConfig.emojis.fetch('default', []).map { |e| ":#{e}:" }
        },
        notifications: {
          kinds:           AppConfig.notifications.fetch('kinds', [])
        },
        durations:         AppConfig.durations.fetch('durations', []),
        pollTemplates:     AppConfig.poll_templates,
        pollTypes:         AppConfig.poll_types,
        pollColors:        AppConfig.colors,
        timeZones:         AppConfig.timezones,
        assetRoot:         "/client/#{current_version}/",
        identityProviders: AppConfig.providers.fetch('identity', []).map do |provider|
          ({ name: provider, href: send("#{provider}_oauth_path") } if ENV["#{provider.upcase}_APP_KEY"])
        end.compact
      }
    end
  end
end
