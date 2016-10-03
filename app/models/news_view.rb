class NewsView < ApplicationRecord
  belongs_to :seen_by
  belongs_to :seen
end
