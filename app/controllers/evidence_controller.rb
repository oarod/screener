class EvidenceController < ApplicationController
  def index
    if category == "all"
      @evidence = Evidence.all
    else
      @evidence = Evidence.for_category(category)
    end

    if request.xhr?
      render "_table_body", locals: {evidence: @evidence, category: params[:category] }, layout: false
    else
      render "index"
    end
  end

  private

  def category
    params["category"].blank? ? "all" : params["category"]
  end
end
