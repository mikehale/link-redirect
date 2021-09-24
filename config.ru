target = ENV.fetch('REDIRECT_TARGET')

app = proc do |env|
  body = ""
  [302,
   {
     'Content-Type' => 'text/plain',
     'Content-Length' => body.length.to_s,
     'Location' => target
   }, [body]
  ]
end

run app
