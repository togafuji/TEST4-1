class User < ApplicationRecord
  validates :title, presence: true
  validates :start_at, presence: true
  validate :date_before_start
  def date_before_start
    return if start_at.blank?
    errors.add(:start_at, "は今日以降のものを選択してください") if start_at < Date.today
  end
  validate :not_reverse_start_finish
  def not_reverse_start_finish
    errors.add(:start_at, "は終了日以前の日付にしてください") if start_at >= finish
  end  
  validates :finish, presence: true
  validates :onememo, length: {maximum: 40}
end
