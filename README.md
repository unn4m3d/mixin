# mixin

A small macro that allows you to specify access level when delegating methods

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  mixin:
    github: unn4m3d/mixin
```


## Usage


```crystal
require "mixin"

class Foo
  @foo = "ABC"

  delegate downcase, to: @foo, access: :protected
  delegate strip, to: @foo, access: :private

  def to_s
    downcase
  end
end
```


TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it ( https://github.com/unn4m3d/mixin/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [unn4m3d](https://github.com/unn4m3d) - creator, maintainer
