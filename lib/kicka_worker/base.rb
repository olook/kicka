module KickaWorker
  class Base
    def dispatcher(sysarg)
      case sysarg
        when "all"
          run_all_workers
        when "mailer"
          run_mailer_worker
        when "mail_invite"
          run_mail_invite_worker
        when "mail_reinvite"
          run_mail_reinvite_worker
        when "order_status"
          run_order_status_worker
        when "abacos_to_front"
          run_abacos_to_front_worker
        when "front_to_abacos"
          run_front_to_abacos_worker
        when "showroom_ready_mailer"
          run_showroom_ready_mailer_worker
      end
    end

    private

    def run_all_workers
      `nohup bundle exec rake environment QUEUE=mailer resque:work RAILS_ENV=production &`
      `nohup bundle exec rake environment QUEUE=mail_invite resque:work RAILS_ENV=production &`
      `nohup bundle exec rake environment QUEUE=mail_reinvite resque:work RAILS_ENV=production &`
      `nohup bundle exec rake environment QUEUE=order_status resque:work RAILS_ENV=production &`
      `nohup bundle exec rake environment QUEUE=abacos_to_front resque:work RAILS_ENV=production &`
      `nohup bundle exec rake environment QUEUE=front_to_abacos resque:work RAILS_ENV=production &`
      `nohup bundle exec rake environment QUEUE=showroom_ready_mailer resque:work RAILS_ENV=production &`
    end

    def run_mailer_worker
      `nohup bundle exec rake environment QUEUE=mailer resque:work RAILS_ENV=production &`
    end

    def run_mail_invite_worker
      `nohup bundle exec rake environment QUEUE=mail_invite resque:work RAILS_ENV=production &`
    end

    def run_mail_reinvite_worker
      `nohup bundle exec rake environment QUEUE=mail_reinvite resque:work RAILS_ENV=production &`
    end

    def run_order_status_worker
      `nohup bundle exec rake environment QUEUE=order_status resque:work RAILS_ENV=production &`
    end

    def run_abacos_to_front_worker
      `nohup bundle exec rake environment QUEUE=abacos_to_front resque:work RAILS_ENV=production &`
    end

    def run_front_to_abacos_worker
      `nohup bundle exec rake environment QUEUE=front_to_abacos resque:work RAILS_ENV=production &`
    end

    def run_showroom_ready_mailer_worker
      `nohup bundle exec rake environment QUEUE=showroom_ready_mailer resque:work RAILS_ENV=production &`
    end
  end
end

