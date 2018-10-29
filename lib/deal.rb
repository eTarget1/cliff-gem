class CliffGem::Deal
  attr_accessor :name,:price, :avaibility, :url, :color

  def self.today
    # puts "this workd now!"
    puts <<-DOC.gsub!(/^\s+|\s+$/, "")
      1 Webcam 720P HD -  Colour Name: HD92 720P  - £14.99
      2  Mpow PC Headset - Colour Name: Black - £18.99
    DOC
    deal_1 = self.new
     deal_1.name = "Webcam 720P HD"
     deal_1.color = "HD92 720P"
     deal_1.price = "£14.99"
     deal_1.avaibility = true
     deal_1.url ="https://www.amazon.co.uk/dp/B01NAKVPDJ/ref=sspa_dk_detail_1?psc=1&pd_rd_i=B01NAKVPDJ&pf_rd_m=A3P5ROKL5A1OLE&pf_rd_p=8e5be0e3-b258-4b06-8b6e-695b24f935a4&pf_rd_r=G1DJ38QMFG7W431TSCH0&pd_rd_wg=G8iCC&pf_rd_s=desktop-dp-sims&pf_rd_t=40701&pd_rd_w=lOZP1&pf_rd_i=desktop-dp-sims&pd_rd_r=b4e0d20b-d861-11e8-be6c-5d68b767c2a7"

     deal_2 = self.new
     deal_2.name = "Mpow PC Headset"
     deal_2.color = "Black"
     deal_2.price = "£19.99"
     deal_2.avaibility = true
     deal_2.url = "https://www.amazon.co.uk/Mpow-Headset-Multi-Use-headset-Reduction/dp/B06XX7SYP2"


     [deal_1, deal_2]

  end
end
