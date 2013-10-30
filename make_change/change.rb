class Changer

  def self.make_change(money)
    change = []
    coins = [25, 10, 5, 1]

    while money > 0 do 
      coins.each do |deposit|
        while money >= deposit
          change << deposit
          money -= deposit
        end
      end
    end
    change
  end
end