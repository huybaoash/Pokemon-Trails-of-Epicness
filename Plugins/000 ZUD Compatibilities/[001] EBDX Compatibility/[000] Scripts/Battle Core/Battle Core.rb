#===============================================================================
#  EBS DX Battle Core processing
#===============================================================================
class PokeBattle_Battle
  def quadrubattle?; return (pbSideSize(0) > 3 || pbSideSize(1) > 3); end
  def quintebattle?; return (pbSideSize(0) > 4 || pbSideSize(1) > 4); end

  alias ebdx_pbStartBattleSendOut pbStartBattleSendOut
  def pbStartBattleSendOut(sendOuts)
    if wildBattle? && $game_switches[Settings::MAXRAID_SWITCH]
      pbRaidSendOut(sendOuts)
    else
      ebdx_pbStartBattleSendOut(sendOuts)
    end
  end
end