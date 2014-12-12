class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :user

  scope :agrupar, -> {joins(:article).group(:article_id).select(:title).count}

end
