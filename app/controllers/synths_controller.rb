class SynthsController < ApplicationController

  def index
    @synths = Synth.all
  end

  def create

  end
end
