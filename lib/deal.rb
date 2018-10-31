class CliffGem::Deal
  attr_accessor :name, :price, :avaibility, :url, :color, :dimension, :weight

  def self.today
    # puts "this workd now!"
    self.scrape_deals

  end

  def self.scrape_deals
    deals = []
    deals << self.scrape_cam
    deals << self.scrape_headset

    deals
    # deal_1 = self.new
    #  deal_1.name = "Webcam 720P HD"
    #  deal_1.price = "£14.99"
    #  deal_1.avaibility = true
    #  deal_1.url ="https://www.amazon.co.uk/dp/B01NAKVPDJ/ref=sspa_dk_detail_1?psc=1&pd_rd_i=B01NAKVPDJ&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=8e5be0e3-b258-4b06-8b6e-695b24f935a4&pf_rd_r=G1DJ38QMFG7W431TSCH0&pd_rd_wg=G8iCC&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&pd_rd_w=lOZP1&pf_rd_i=desktop-dp-sims&pd_rd_r=b4e0d20b-d861-11e8-be6c-5d68b767c2a7"
    #
    #  deal_2 = self.new
    #  deal_2.name = "Mpow PC Headset"
    #  deal_2.color = "Black"
    #  deal_2.price = "£19.99"
    #  deal_2.avaibility = true
    #  deal_2.url = "https://www.amazon.co.uk/Mpow-Headset-Multi-Use-headset-Reduction/dp/B06XX7SYP2"


     #[deal_1, deal_2]

  end

  def self.scrape_cam
     doc = Nokogiri::HTML(open("https://www.amazon.co.uk/dp/B01NAKVPDJ/ref=sspa_dk_detail_1?psc=1&pd_rd_i=B01NAKVPDJ&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=8e5be0e3-b258-4b06-8b6e-695b24f935a4&pf_rd_r=G1DJ38QMFG7W431TSCH0&pd_rd_wg=G8iCC&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&pd_rd_w=lOZP1&pf_rd_i=desktop-dp-sims&pd_rd_r=b4e0d20b-d861-11e8-be6c-5d68b767c2a7"))
     deal = self.new
     deal.name = doc.css("#productTitle").text.strip
     deal.price = doc.css("#price_inside_buybox").text.strip
     deal.color = doc.css("div.attrG td.value").children[4].text
     deal.dimension = doc.css("div.attrG td.value").children[2].text
     deal.weight = doc.css("div.attrG td.value").children[1].text
     deal.avaibility = true
     deal
     #binding.pry
   end

   def self.scrape_headset
     doc = Nokogiri::HTML(open("https://www.amazon.co.uk/Mpow-Headset-Multi-Use-headset-Reduction/dp/B06XX7SYP2"))
     deal = self.new
     deal.name = doc.css("#productTitle").text.strip
      deal.price = doc.css("#price_inside_buybox").text.strip
      deal.color = doc.css("div.attrG td.value").children[4].text
      deal.dimension = doc.css("div.attrG td.value").children[2].text
      deal.weight = doc.css("div.attrG td.value").children[1].text
      deal.avaibility = true

      deal
   end

end
