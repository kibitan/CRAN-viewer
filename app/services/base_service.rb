module BaseService
  extend ActiveSupport::Concern

  class_methods do
    def call(**keyword_args)
      new(keyword_args).call
    end
  end

  def initialize
    raise NotImplementedError
  end

  def call
    raise NotImplementedError
  end
end
