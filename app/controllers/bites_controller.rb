class BitesController < ApplicationController
  def create
    @bite = Bite.create(post_id: 1)
    binding.pry
    redirect_to "/"
  end
end
