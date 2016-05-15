require 'test_helper'
require 'rails/generators/es6/assets/assets_generator'

class AssetGeneratorTest < Rails::Generators::TestCase
  tests Es6::Generators::AssetsGenerator
  destination File.expand_path("../tmp", __FILE__)

  def test_generation
    run_generator %w(posts)
    assert_file 'app/assets/javascripts/posts.es6'
  end

  def test_no_js_generated
    run_generator %w(posts)
    assert_no_file 'app/assets/javascripts/posts.js'
  end
end
