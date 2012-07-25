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
	when 'order_status_acknowledgment'
	  run_order_status_acknowledgment
	when 'order'
	  run_order
	when 'inventory_acknowledgment'
	  run_inventory_acknowledgment
	when 'price_acknowledgment'
	  run_price_acknowledgment
	when 'product'
	  run_product
	when 'product_acknowledgment'
	  run_product_acknowledgment
	when 'import_freight'
	  run_import_freight
	when 'SAC_notifications'
	  run_SAC_notifications
	when 'delayed_payment'
	  run_delayed_payment
      end
    end

    private

    def run_all_workers
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mailer resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mailer resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mailer resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mail_invite resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mail_invite resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mail_invite resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mail_reinvite resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mail_reinvite resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mail_reinvite resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      #`cd /srv/olook/current; nohup bundle exec rake environment QUEUE=abacos_to_front resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      #`cd /srv/olook/current; nohup bundle exec rake environment QUEUE=abacos_to_front resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      #`cd /srv/olook/current; nohup bundle exec rake environment QUEUE=abacos_to_front resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      #`cd /srv/olook/current; nohup bundle exec rake environment QUEUE=front_to_abacos resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      #`cd /srv/olook/current; nohup bundle exec rake environment QUEUE=front_to_abacos resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      #`cd /srv/olook/current; nohup bundle exec rake environment QUEUE=front_to_abacos resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=showroom_ready_mailer resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=showroom_ready_mailer resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=showroom_ready_mailer resque:work RAILS_ENV=production > /dev/null 2>&1 &`

      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order_status_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order_status_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order_status resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      #`cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order_status resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      #`cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order_status resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      #`cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      #`cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=inventory_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=inventory_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=price_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=price_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=product resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=product resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=product resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=product_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=product_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=product_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=import_freight resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=SAC_notifications resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=delayed_payment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end

    def run_order_status_acknowledgment
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order_status_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order_status_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end

    def run_order
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      #`cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      #`cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end

    def run_inventory_acknowledgment
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=inventory_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=inventory_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end

    def run_price_acknowledgment
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=price_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=price_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end

    def run_product
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=product resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=product resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=product resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end

    def run_product_acknowledgment
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=product_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=product_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=product_acknowledgment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end

    def run_mailer_worker
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mailer resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mailer resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mailer resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end

    def run_mail_invite_worker
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mail_invite resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mail_invite resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mail_invite resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end

    def run_mail_reinvite_worker
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mail_reinvite resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mail_reinvite resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=mail_reinvite resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end

    def run_order_status_worker
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order_status resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      #`cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order_status resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      #`cd /srv/olook/current; nohup bundle exec rake environment QUEUE=order_status resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end

    def run_showroom_ready_mailer_worker
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=showroom_ready_mailer resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=showroom_ready_mailer resque:work RAILS_ENV=production > /dev/null 2>&1 &`
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=showroom_ready_mailer resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end

    def run_import_freight
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=import_freight resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end

    def run_SAC_notifications
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=SAC_notifications resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end

    def run_delayed_payment
      `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=delayed_payment resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    end
    #def run_abacos_to_front_worker
    #  `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=abacos_to_front resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    #  `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=abacos_to_front resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    #  `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=abacos_to_front resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    #end

    #def run_front_to_abacos_worker
    #  `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=front_to_abacos resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    #  `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=front_to_abacos resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    #  `cd /srv/olook/current; nohup bundle exec rake environment QUEUE=front_to_abacos resque:work RAILS_ENV=production > /dev/null 2>&1 &`
    #end
  end
end

