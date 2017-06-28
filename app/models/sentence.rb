class Sentence < ActiveRecord::Base
  belongs_to :story
  validates :author, :presence => true
  validates :text, :presence => true
  before_save :check_for_period

  private
    def check_for_period
      if self.text[-1] == "."
        self.text = self.text[0..-2]
      end
    end
end
