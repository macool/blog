class Comment
  module CommentCaching
    extend ActiveSupport::Concern
    
    included do
      after_commit :flush_approved_comments_count_for_post
    end
    
    def flush_approved_comments_count_for_post
      Rails.cache.delete(["approved_comments_count_for_post", post_id])
    end
    
#    module ClassMethods
#    end
  end
end
