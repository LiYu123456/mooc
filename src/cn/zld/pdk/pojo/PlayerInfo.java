package cn.zld.pdk.pojo;

import java.util.List;

/**
 * ��Ϸ�����Ϣ
 *
 * @author ������
 * @project �ܵÿ���Ϸ���� 2010-9-3
 */
public class PlayerInfo {

	private String playerName;//�������
	private List<CardInfo> playerCards;//������е���
	private int location;//��������ĵط�

	public PlayerInfo(){}

	public PlayerInfo(String playerName,List<CardInfo> cards,int loc){
		this.playerName=playerName;
		this.playerCards=cards;
		this.location=loc;
	}

	public String toString(){
		return "������"+this.getPlayerName()+"�����е��ƣ�"+this.getPlayerCards();
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
