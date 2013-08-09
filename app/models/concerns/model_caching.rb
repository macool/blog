module ModelCaching
  extend ActiveSupport::Concern

  included do
    after_commit :flush_cache
  end

  def flush_cache
    Rails.cache.delete([self.class.name, id])
  end

  module ClassMethods
    def cached_find(id)
      Rails.cache.fetch([name, id]) { find(id) }
    end
  end
end
