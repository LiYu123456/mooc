package cn.zld.pdk.thread;

import java.util.List;

import javax.swing.JPanel;

import cn.zld.pdk.action.OutCardAction;
import cn.zld.pdk.component.WestCardPanel;
import cn.zld.pdk.pojo.CardInfo;
import cn.zld.pdk.pojo.PlayerInfo;
import cn.zld.pdk.ui.MainPlayUI;

/**
 * 北方玩家自动处理线程
 *
 * @author 张立冬
 * @project 跑得快游戏开发 2010-9-7
 */
public class WestPlayerThread extends Thread {

	private static List<CardInfo> frontCards;
	private static List<CardInfo> myCards;
	private static PlayerInfo player;
	private static int state;
	private static int type;
	private static JPanel panel;

	public WestPlayerThread() {
	}

	public void run() {
		while (true) {
			try {
				if (state == 4) {
					sleep(1000);
					List<CardInfo> outCards = OutCardAction.searchCards(type,
							frontCards, MainPlayUI.getWplayer()
									.getPlayerCards());
					if (outCards.size() == 0) {// 如果为零则为不出

					} else {
						panel.removeAll();
						panel.add(new WestCardPanel(outCards,0, 100,2));
						OutCardAction.getAudio().play();
						javax.swing.SwingUtilities.updateComponentTreeUI(panel);
					}
					state = 1;
					MainPlayUI.initPlayerCard();
					MainPlayUI.setState(state);
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
		WestPlayerThread.frontCards = frontCards;
	}

	public static List<CardInfo> getMyCards() {
		return myCards;
	}

	public static void setMyCards(List<CardInfo> myCards) {
		WestPlayerThread.myCards = myCards;
	}

	public static int getstate() {
		return state;
	}

	public static void setState(int state) {
		WestPlayerThread.state = state;
	}

	public static int getType() {
		return type;
	}

	public static void setType(int type) {
		WestPlayerThread.type = type;
	}

	public static JPanel getPanel() {
		return panel;
	}

	public static void setPanel(JPanel panel) {
		WestPlayerThread.panel = panel;
	}

	public static PlayerInfo getPlayer() {
		return player;
	}

	public static void setPlayer(PlayerInfo player) {
		WestPlayerThread.player = player;
	}
}
