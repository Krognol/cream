# cream

Cr(ystal St)eam

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  cream:
    github: Krognol/cream
```


## Usage


```crystal
require "cream"

# Everything currently returns a json body
# With a little time and effort it'd be possible to
# unmarshal the json body into objects.

# Resolving a vanity url
puts Cream::ISteamUser.resolvevanityurl("your steam api key here", "Krognol", 1) # 1 is the default, documentation to come

# Output : 
# {
#        "response": {
#                "steamid": "76561198007794727",
#                "success": 1
#        }
# }

```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it ( https://github.com/Krognol/cream/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [Krognol](https://github.com/Krognol) Krognol - creator, maintainer
