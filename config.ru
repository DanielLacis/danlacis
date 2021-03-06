# require 'newrelic_rpm'
# NewRelic::Agent.manual_start
use Rack::Static,
  :urls => ["/images", "/js", "/css"],
  :root => "public"
map "/" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type' => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/html/index.html', File::RDONLY)
    ]
  }
end

map "/about" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type' => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/html/about.html', File::RDONLY)
    ]
  }
end

map "/contact" do
  run lambda { |env|
    [
      200,
      {
        'Content-Type' => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/html/contact.html', File::RDONLY)
    ]
  }
end
