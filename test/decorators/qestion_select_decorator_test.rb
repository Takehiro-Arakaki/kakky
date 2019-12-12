# frozen_string_literal: true

require 'test_helper'

class QestionSelectDecoratorTest < ActiveSupport::TestCase
  def setup
    @qestion_select = QestionSelect.new.extend QestionSelectDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end
