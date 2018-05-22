package cn.zld.pdk.pojo;

import java.util.List;

/**
 * 游戏玩家信息
 *
 * @author 张立冬
 * @project 跑得快游戏开发 2010-9-3
 */
public class PlayerInfo {

	private String playerName;//玩家名字
	private List<CardInfo> playerCards;//玩家所有的牌
	private int location;//玩家所坐的地方

	public PlayerInfo(){}

	public PlayerInfo(String playerName,List<CardInfo> cards,int loc){
		this.playerName=playerName;
		this.playerCards=cards;
		this.location=loc;
	}

	public String toString(){
		return "姓名："+this.getPlayerName()+"所持有的牌："+this.getPlayerCards();
	}

	public String getPlayerName() {
		return playerName;
	}
	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}
	public List<CardInfo> getPlayerCards() {
		return playerCards;
	}
	public void setPlayerCards(List<CardInfo> playerCards) {
		this.playerCards = playerCards;
	}

	public int getLocation() {
		return location;
	}

	public void setLocation(int location) {
		this.location = location;
	}
}
