desc "This take is called by the Heroku cron add-on /n
http://serverfault.com/questions/384063/how-can-i-avoid-heroku-stopping-my-dyno /n
docs http://devcenter.heroku.com/articles/scheduler /n"
task :call_page => :environment do
  puts "running call_page rake task"
  uri = URI.parse('http://www.henryvanwagenberg.com/')
  response = Net::HTTP.get_response(uri)
  # http://ruby-doc.org/stdlib-2.0.0/libdoc/net/http/rdoc/Net/HTTPResponse.html
  # includes http header response info in log
  puts "GOT #{uri} #{response.code} #{response.msg}"
end
