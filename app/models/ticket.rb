class Ticket < ApplicationRecord
  belongs_to :order
  belongs_to :ticket_type
  before_save :update_stats

  # TODO: complete the folowing
  # before_xxxxx :update_stats

  private
    def update_stats
      es = self.ticket_type.event.event_stat.attendance

      end
    end

