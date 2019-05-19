# Ruby Developer Test

### Run ruby script (see most viewed pages)

After cloning repository navigate to directory:
`$ cd ruby_app`

Run the script in IRB:
`$ irb -r. ./parser.rb`

Choose name of server logs you want to parse and see results:

`Parser.new.parse_logfile('webserver.log')`

### Run miniests

Test by:
` ruby ./parser_test.rb parser.rb `

