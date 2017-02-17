class EvidenceController < ApplicationController
  before_action :set_category

  def index
    evidence =
      if @category.present?
        Evidence.for_category(@category)
      else
        Evidence.all
      end

    @evidence_grid = initialize_grid(evidence)
  end

  private

  def set_category
    @category = params[:category].present? ? params[:category] : nil
  end
end
