class Story < ActiveRecord::Base
  has_many :sentences
  validates :name, :presence => true

  scope :most_sentences, -> {(
    select("stories.id, stories.name, stories.image, count(sentences.id) as sentences_count")
    .joins(:sentences)
    .group("stories.id")
    .order("sentences_count DESC")
    .limit(1)
    )}
end
