class Post
  module PostCaching
    extend ActiveSupport::Concern
    
    included do
      after_commit :flush_cached_published
    end
    
    def cached_author
      @cached_author ||= User.cached_find user_id
    end
    
    def approved_comments_count
      Rails.cache.fetch(["approved_comments_count_for_post", id]) do
        Rails.logger.debug "[cache]: caching comments count for post #{id}"
        self.comments.approved.count.to_i
      end
    end
    
    def flush_cached_published
      Rails.logger.debug "[cache]: flushing cache from published posts"
      Rails.cache.delete(["posts", "published"])
    end
    
    module ClassMethods
      def cached_published
        Rails.cache.fetch(["posts", "published"]) do
          Rails.logger.debug "[cache]: caching published posts"
          published.order("id DESC").to_a
        end
      end
    end
  end
end
