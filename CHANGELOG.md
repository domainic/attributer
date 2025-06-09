# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog], and this project adheres to [Break Versioning].

## [Unreleased]

## [v0.2.2] - 2025-06-09

### Changed

* Migrated from the mono-repo

## [v0.2.0] - 2025-01-01

### Added

* [#22](https://github.com/domainic/domainic/pull/22) Specialized error classes (`ValidationExecutionError`,
  `CallbackExecutionError`, and`CoercionExecutionError`) to provide clear error reporting for validation, callback,
  and coercion failures.

### Changed

* [#18](https://github.com/domainic/domainic/pull/18) `Domainic::Attributer::Attribute::Coercer#call` will no longer
  attempt to coerce nil values when the attribute is not nilable. While small this is technically a breaking change.
* [#169](https://github.com/domainic/domainic/pull/169) removed implicit dependency on RSpec from
  `Domainic::Attributer::Attribute::BelongsToAttribute`

### Fixed

* [#18](https://github.com/domainic/domainic/pull/18) Fixed missing requires for `Domainic::Attributer::Undefined` in
  the `Domainic::Attributer::Attribute` and `Domainic::Attributer::Attribute::Validator` classes.
* [#94](https://github.com/domainic/domainic/pull/94) Fixed missing requires for `Domainic::Attributer::Undefined` in
  `Domainic::Attributer::DSL::OptionParser`, and `Domainic::Attributer::DSL::Initializer`
* [#94](https://github.com/domainic/domainic/pull/94) Fixed missing require for `Domainic::Attributer::Attribute` in
  `Domainic::Attributer::Attribute::BelongsToAttribute`
* Various documentation improvements and corrections.

## [v0.1.0] - 2024-12-12

* Initial release

[Keep a Changelog]: https://keepachangelog.com/en/1.0.0/
[Break Versioning]: https://www.taoensso.com/break-versioning

<!-- versions -->

[Unreleased]: https://github.com/domainic/attributer/compare/0.2.2...HEAD
[v0.2.2]: https://github.com/domainic/attributer/compare/0.2.0...0.2.2
[v0.2.0]: https://github.com/domainic/attributer/compare/0.1.0...0.2.0
[v0.1.0]: https://github.com/domainic/attributer/compare/e9be85cf821d36d572f9c4601b84ec0f5a40f083...0.1.0
