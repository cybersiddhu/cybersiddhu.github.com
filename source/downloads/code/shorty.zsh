# Add your own custom plugins in the custom/plugins directory. Plugins placed
# here will override ones with the same name in the main plugins directory.
shorty () {
  curl -s https://www.googleapis.com/urlshortener/v1/url\?key\=API_KEY \
     -H 'Content-Type: application/json' \ 
     -d '{"longUrl": "'"$1"'"}' | egrep -o 'http://goo.gl/[^"]*'
}
