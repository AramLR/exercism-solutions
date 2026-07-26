module Blackjack

  CARDS = {
    ace: 11,
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9,
    ten: 10,
    jack: 10,
    queen: 10,
    king: 10,
  }

  OPTIONS = {
    stand: "S",
    hit: "H",
    split: "P",
    automatically_win: "W"
  }

  def self.parse_card(card)
    if CARDS.has_key?(card.to_sym) then CARDS[card.to_sym] else 0 end
  end

  def self.card_range(card1, card2)
    score = parse_card(card1) + parse_card(card2)

    case score
    when 4..11 then :low.to_s 
    when 12..16 then :mid.to_s
    when 17..20 then :high.to_s
    when 21 then :blackjack.to_s
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    if card1.to_sym == :ace and card2.to_sym == :ace then return OPTIONS[:split] end

    range = card_range(card1, card2).to_sym

    if range == :high or (range == :mid and not parse_card(dealer_card) >= 7) then return OPTIONS[:stand] end
    if range == :mid and parse_card(dealer_card) >= 7 then return OPTIONS[:hit] end
    if range == :low then return OPTIONS[:hit] end
    if range == :blackjack and not [:ace, :ten].include?(dealer_card.to_sym) then return OPTIONS[:automatically_win] else return OPTIONS[:stand] end
  end
end

#p Blackjack.parse_card("ace")
#p Blackjack.card_range("ten", "king")
#p Blackjack.first_turn("ace", "ace", "two")