require '../lib/kicka_worker.rb'

KickaWorker::Base.new.dispatcher(ARGV[0])
