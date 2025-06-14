# Domainic::Attributer

[![Domainic::Attributer Version](https://img.shields.io/gem/v/domainic-attributer?style=for-the-badge&logo=rubygems&logoColor=white&logoSize=auto&label=Gem%20Version)](https://rubygems.org/gems/domainic-attributer)
[![Domainic::Attributer License](https://img.shields.io/github/license/domainic/domainic?style=for-the-badge&logo=opensourceinitiative&logoColor=white&logoSize=auto)](./LICENSE)
[![Domainic::Attributer Docs](https://img.shields.io/badge/rubydoc-blue?style=for-the-badge&logo=readthedocs&logoColor=white&logoSize=auto&label=docs)](https://rubydoc.info/gems/domainic-attributer/0.2.2)

Domainic::Attributer is a powerful toolkit that brings clarity and safety to your Ruby class attributes.
Ever wished your class attributes could:

* Validate themselves to ensure they only accept correct values?
* Transform input data automatically into the right format?
* Have clear, enforced visibility rules?
* Handle their own default values intelligently?
* Tell you when they change?
* Distinguish between required arguments and optional settings?

That's exactly what Domainic::Attributer does! It provides a declarative way to define and manage attributes
in your Ruby classes, ensuring data integrity and clear interfaces. It's particularly valuable for:

* Domain models and value objects
* Service objects and command patterns
* Configuration objects
* Any class where attribute behavior matters

Think of it as giving your attributes a brain - they know what they want, how they should behave, and
they're not afraid to speak up when something's not right!

## Quick Start

```ruby
class SuperDev
  include Domainic::Attributer

  argument :code_name, String
  option :power_level, Integer, default: 9000

  option :favorite_gem do
    validate_with ->(val) { val.to_s.end_with?('ruby') }
    coerce_with ->(val) { val.to_s.downcase }
    non_nilable
  end
end

dev = SuperDev.new('RubyNinja', favorite_gem: 'RAILS_RUBY')
dev.favorite_gem  # => "rails_ruby"
dev.power_level = 9001
dev.power_level = 'over 9000'  # Raises ArgumentError: invalid value for Integer
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'domainic-attributer'
```

Or install it yourself as:

```bash
gem install domainic-attributer
```

## Documentation

For detailed usage instructions and examples, see [USAGE.md](./docs/USAGE.md).

## Contributing

We welcome contributions! Please see our
[Contributing Guidelines](./docs/CONTRIBUTING) for:

* Development setup and workflow
* Code style and documentation standards
* Testing requirements
* Pull request process

Before contributing, please review our [Code of Conduct](./docs/CODE_OF_CONDUCT).

## License

The gem is available as open source under the terms of the [MIT License](./LICENSE).
