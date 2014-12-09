class Article < ActiveRecord::Base
has_many :comments, dependent: :destroy
validates :title , presence: true,length:{minimum: 5}

scope :last_article, -> {order(created_at: :desc).limit(5)}

end
