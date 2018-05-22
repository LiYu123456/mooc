package cn.zld.pdk.thread;

import java.util.List;

import javax.swing.JPanel;

import cn.zld.pdk.action.OutCardAction;
import cn.zld.pdk.pojo.CardInfo;

/**
 * 南方玩家处理线程
 *
 * @author 张立冬
 * @project 跑得快游戏开发 2010-9-7
 */
public class SouthPlayerThread extends Thread {

	private List<CardInfo> frontCards;
	private List<CardInfo> myCards;
	private int state;
	private int type;
	private JPanel panel;

	public SouthPlayerThread(List<CardInfo> frontCards, List<CardInfo> myCards,
			int state, int type,JPanel panel) {
		this.frontCards = frontCards;
		this.myCards = myCards;
		this.state = state;
		this.type = type;
		this.panel=panel;
	}

	public void run() {
		while (true) {
			while (state == 2) {
				state++;
				List<CardInfo> outCards = OutCardAction.searchCards(type,
						frontCards, myCards);
				if (outCards.size() == 0) {// 如果为零则为不出

				}else{

				}
			}
		}
	}

	public List<CardInfo> getFrontCards() {
		return frontCards;
	}

	public void setFrontCards(List<CardInfo> frontCards) {
		this.frontCards = frontCards;
	}

	public List<CardInfo> getMyCards() {
		return myCards;
	}

	public void setMyCards(List<CardInfo> myCards) {
		this.myCards = myCards;
	}

	public int getstate() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
}
