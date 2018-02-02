module TicTacToe
  #Player.new({:color=>'0',:name=>'ravi'})
  class Player
    attr_accessor :color,:name
   
    def initialize(**args)
       raise "Missing color" if args[:color].nil? 
       raise "Missing name" if args[:name].nil? 
       raise "Color not allowed" if args[:color] != "O" && args[:color] != "X"
       @color = args[:color]
       @name  = args[:name]
    end

  end

  #Game.new({:players=>[p1,p2]})
  class Game
   WIN_COND = [ [0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6] ]
   attr_accessor :p1,:p2,:board
   
   def initialize(**args)
      raise "Missing players" if args[:players].nil?
      raise "Players count mismatch" if args[:players].count != 2
      args[:players].map{ |x| raise "Invalid player" if x.class.to_s != 'Player'}
      raise "Same colors for both players" if args[:players].map{ |x| x.color}.uniq.count != 2
      @p1, @p2 = args[:player]
      @board = (0..8).map {|x|}
   end

   def play
      puts "Board with positions to select"
      iboard
      turn = @p1 
   end

   def iboard
     puts  "
#############
# 0 # 1 # 2 #
#############
# 3 # 4 # 5 #
#############
# 6 # 7 # 8 #
#############
"    
   end

   def winner? player
     win = false
     WIN_COND.each do |x|
       z1,z2,z3 = x
       if !z1.nil? && z1 == player.send('color') && z1 == z2 && z1 == z3
         win = true
         break
       end
     end
     win
   end

  end
end
