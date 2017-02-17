module EvidenceHelper
  def page_one_summary(evidence)
    evidence.pages.first.text[0..11] << "..."
  end
end
