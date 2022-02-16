# Copyright 2014 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-kinesis-aggregation"
  spec.version       = '0.4.0'
  spec.author        = 'Atlassian'
  spec.email         = 'lgoolsbee@atlassian.com'
  spec.summary       = %q{Fluentd output plugin that sends KPL style aggregated events to Amazon Kinesis.}
  spec.homepage      = "https://github.com/atlassian/fluent-plugin-kinesis-aggregation"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.7'

  spec.add_development_dependency "bundler", "~> 2"
  spec.add_development_dependency "rake", "~> 13"
  spec.add_development_dependency "test-unit", "~> 3"
  spec.add_development_dependency "test-unit-rr", "~> 1"

  spec.add_dependency "fluentd", ["~> 1", "< 2"]
  spec.add_dependency "aws-sdk-kinesis", "~> 1", "!= 1.4", "!= 1.5", "!= 1.14", "!= 1.24"
  spec.add_dependency "google-protobuf", "~> 3", "!= 3.12.0"
end
