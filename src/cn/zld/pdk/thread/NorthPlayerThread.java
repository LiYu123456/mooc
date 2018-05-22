package cn.zld.pdk.thread;

import java.util.List;

import javax.swing.JPanel;

import cn.zld.pdk.action.OutCardAction;
import cn.zld.pdk.component.NorthCardPanel;
import cn.zld.pdk.pojo.CardInfo;
import cn.zld.pdk.pojo.PlayerInfo;
import cn.zld.pdk.ui.MainPlayUI;

/**
 * 北方玩家自动处理线程
 *
 * @author 张立冬
 * @project 跑得快游戏开发 2010-9-7
 */
public class NorthPlayerThread extends Thread {

	private static List<CardInfo> frontCards;
	private static List<CardInfo> myCards;
	private static PlayerInfo player;
	private static int state;
	private static int type;
	private static JPanel panel;

	public NorthPlayerThread() {
	}

	public void run() {
		while (true) {
			try {
				if (state == 3) {
					sleep(1000);
					List<CardInfo> outCards = OutCardAction.searchCards(type,
							frontCards, MainPlayUI.getNplayer()
									.getPlayerCards());
					if (outCards.size() == 0) {// 如果为零则为不出

					} else {
						panel.removeAll();
						panel.add(new NorthCardPanel(outCards,170, 0,1));
						OutCardAction.getAudio().play();
						javax.swing.SwingUtilities.updateComponentTreeUI(panel);
					}
					state = 4;

					WestPlayerThread.setState(state);
					WestPlayerThread.setFrontCards(outCards);
					WestPlayerThread.setType(type);
					MainPlayUI.initPlayerCard();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public static List<CardInfo> getFrontCards() {
		return frontCards;
	}

	public static void setFrontCards(List<CardInfo> frontCards) {
		NorthPlayerThread.frontCards = frontCards;
	}

	public static List<CardInfo> getMyCards() {
		return myCards;
	}

	public static void setMyCards(List<CardInfo> myCards) {
		NorthPlayerThread.myCards = myCards;
	}

	public static int getstate() {
		return state;
	}

	public static void setState(int state) {
		NorthPlayerThread.state = state;
	}

	public static int getType() {
		return type;
	}

	public static void setType(int type) {
		NorthPlayerThread.type = type;
	}

	public static JPanel getPanel() {
		return panel;
	}

	public static void setPanel(JPanel panel) {
		NorthPlayerThread.panel = panel;
	}

	public static PlayerInfo getPlayer() {
		return player;
	}

	public static void setPlayer(PlayerInfo player) {
		NorthPlayerThread.player = player;
	}
}
