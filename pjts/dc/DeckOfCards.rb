module DeckOfCards
  class Deck
   attr_accessor :cards 
   NUMS  = ['A',2,3,4,5,6,7,8,9,10,'J','K','Q']
   SUITS = ['H','S','D','C']
   
   def initialize
     @cards = []
     @cards << Card.new(:joker => true)
     NUMS.each do |x|
       SUITS.each do |y|
         @cards << Card.new(:num => x, :suit => y)
       end
     end
   end

  end

  class Card
    attr_accessor :num, :suit, :joker

    def initialize args
      args.each do |x,v|
        self.send(x.to_s+"=",v)
      end
#      p self
    end
  end
end

DeckOfCards::Deck.new
