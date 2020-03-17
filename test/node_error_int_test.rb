require 'test_helper'

# NodeErrorIntTest.
# @abstract
# Tests the NodeErrorInt class.
class NodeErrorIntTest < Minitest::Test

  # test_version_declared().
  # @abstract
  # The version was declared.
  def test_version_declared()
    refute_nil(::NodeErrorInt::VERSION)
  end

  # test_conf_doc_f_ex().
  # @abstract
  # The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, and 
  # README.md files exist.
  def test_conf_doc_f_ex()
    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
  end

  # setup().
  # @abstract
  # Set fixtures.
  def setup()
    @plain = NodeErrorInt.new()
  end

  # test_pub_m_dec().
  # @abstract
  # The three public methods were declared.
  def test_pub_m_dec()

    assert_respond_to(NodeErrorInt, 'new')
    assert_respond_to(@plain, 'message')
    assert_respond_to(@plain, 'node?')

  end

  # test_priv_m_dec().
  # @abstract
  # The private method message setter was declared.
  def test_priv_m_dec()
    assert_includes(@plain.private_methods(all: false), :message=)
  end

  # test_dm_def().
  # @abstract
  # The overriding DEFAULT_MESSAGE was defined.
  def test_dm_def()
    expected_default = 'The argument is not a Node instance.'
    refute_nil(NodeErrorInt::DEFAULT_MESSAGE)
    assert_equal(expected_default, NodeErrorInt::DEFAULT_MESSAGE)
  end

  # teardown().
  # @abstract
  # Cleanup.
  def teardown()
  end

end

