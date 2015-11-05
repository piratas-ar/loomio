class SiteSettings
  def self.colors
    {
      primary: "#E3E4E6",
      commited: "blue",
      agree: "#94D587",
      abstain: "#EEBC57",
      disagree: "#D1908F",
      block: "#D80D00",
      confused: "grey"
    }.with_indifferent_access
  end
end
