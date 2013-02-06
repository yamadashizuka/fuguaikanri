class JidousaibanIt < ActiveRecord::Base
  attr_accessible :fuguaino_it
def jidousaiban_it
  shori = self.fuguaino_it.slice(2,7)
  saidaiti = format("%05d",shori.to_i()+1)
  moji  = "IT"+saidaiti.to_s()
  return moji
end
end

