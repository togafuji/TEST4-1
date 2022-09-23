class User < ApplicationRecord
  validates :title, presence: true
  validates :start_at, presence: true
  validate :not_reverse_start_finish
  def not_reverse_start_finish
    errors.add(:start_at, "は終了日以前の日付にしてください") if start_at > finish
  end  
  validates :finish, presence: true
  validates :onememo, length: {maximum: 40}
end
