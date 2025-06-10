# frozen_string_literal: true

module Domainic; end

require 'zeitwerk'

root_path = File.dirname(__FILE__)

Zeitwerk::Loader.new.tap do |loader|
  loader.tag = 'domainic-attributer'

  loader.push_dir(File.join(root_path, 'domainic'), namespace: Domainic)
end.setup
