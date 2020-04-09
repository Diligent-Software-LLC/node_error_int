require_relative 'test_helper'

# NodeErrorIntTest.
# @class_description
#   Tests the NodeError class interface.
class NodeErrorIntTest < Minitest::Test

  # Constants.
  CLASS = NodeErrorInt

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, .yardopts, and
  #   README.md files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')

  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(CLASS::VERSION)
  end

  # setup().
  # @description
  #   Set fixtures.
  def setup()
    @plain = CLASS.new()
  end

  # test_pub_m_dec().
  # @description
  #   The two public methods were declared.
  def test_pub_m_dec()
    assert_respond_to(CLASS, 'new')
    assert_respond_to(@plain, 'message')
  end

  # test_priv_m_dec().
  # @description
  #   The private method message setter was declared.
  def test_priv_m_dec()
    assert_includes(@plain.private_methods(all: false), :message=)
  end

  # test_dm_def().
  # @description
  #   DEFAULT_MESSAGE was defined.
  def test_dm_def()

    expected_default = 'The argument is not a Node instance.'
    refute_nil(CLASS::DEFAULT_MESSAGE)
    assert_equal(expected_default, CLASS::DEFAULT_MESSAGE)

  end

  # teardown().
  # @description
  #   Cleanup.
  def teardown()
  end

end
