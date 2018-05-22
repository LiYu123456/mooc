package cn.zld.pdk.thread;

import java.applet.AudioClip;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JPanel;

import cn.zld.pdk.action.InitAction;
import cn.zld.pdk.action.OutCardAction;
import cn.zld.pdk.component.EastCardPanel;
import cn.zld.pdk.pojo.CardInfo;
import cn.zld.pdk.pojo.PlayerInfo;
import cn.zld.pdk.ui.MainPlayUI;

/**
 * 东方玩家自动处理线程
 *
 * @author 张立冬
 * @project 跑得快游戏开发 2010-9-7
 */
public class EastPlayerThread extends Thread {

	private static List<CardInfo> frontCards;
	private static List<CardInfo> myCards;
	private static PlayerInfo player;
	private static int state;
	private static int type;
	private static JPanel panel;
	private static boolean isSno;
	private static boolean isEno;
	private static boolean isNno;
	private static boolean isWno;

	public EastPlayerThread() {
	}


	public void run() {
		while (true) {
			try {
				if (state == 2) {
					sleep(1000);
					System.out.println("东方：");
					List<CardInfo> outCards = new ArrayList<CardInfo>();
					if (isSno()) {
						panel.removeAll();
						List<CardInfo> myCards = MainPlayUI.getEplayer()
								.getPlayerCards();
						CardInfo mCard = null;
						if (myCards.size() != 0) {
							mCard = myCards.get(0);
							MainPlayUI.getEplayer().getPlayerCards().remove(0);
							outCards.add(mCard);
						}
						panel.add(new EastCardPanel(outCards, 0, 100, 2));
						URL url = OutCardAction.class
								.getResource("/cn/zld/pdk/skin/poker/sound/"
										+ mCard.getCardC() + ".wav");
						AudioClip audio = java.applet.Applet.newAudioClip(url);
						audio.play();
					} else if (!isSno()) {
						outCards = OutCardAction.searchCards(
								type, frontCards, MainPlayUI.getEplayer()
										.getPlayerCards());
						if (outCards.size() == 0) {// 如果为零则为不出
							panel.removeAll();
							panel.add(new EastCardPanel());
							URL url = OutCardAction.class
									.getResource("/cn/zld/pdk/skin/poker/sound/buyao1.wav");
							AudioClip audio = java.applet.Applet
									.newAudioClip(url);
							audio.play();
							javax.swing.SwingUtilities
									.updateComponentTreeUI(panel);
						} else {
							panel.removeAll();
							panel.add(new EastCardPanel(outCards, 0, 100, 2));
							OutCardAction.getAudio().play();
							javax.swing.SwingUtilities
									.updateComponentTreeUI(panel);

						}
					}
					state=3;
					NorthPlayerThread.setFrontCards(outCards);
					NorthPlayerThread.setType(type);
					NorthPlayerThread.setState(state);
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
		EastPlayerThread.frontCards = frontCards;
	}

	public static List<CardInfo> getMyCards() {
		return myCards;
	}

	public static void setMyCards(List<CardInfo> myCards) {
		EastPlayerThread.myCards = myCards;
	}

	public static int getstate() {
		return state;
	}

	public static void setState(int state) {
		EastPlayerThread.state = state;
	}

	public static int getType() {
		return type;
	}

	public static void setType(int type) {
		EastPlayerThread.type = type;
	}

	public static JPanel getPanel() {
		return panel;
	}

	public static void setPanel(JPanel panel) {
		EastPlayerThread.panel = panel;
	}

	public static PlayerInfo getPlayer() {
		return player;
	}

	public static void setPlayer(PlayerInfo player) {
		EastPlayerThread.player = player;
	}

	public static boolean isSno() {
		return isSno;
	}

	public static void setSno(boolean isSno) {
		EastPlayerThread.isSno = isSno;
	}

	public static boolean isEno() {
		return isEno;
	}

	public static void setEno(boolean isEno) {
		EastPlayerThread.isEno = isEno;
	}

	public static boolean isNno() {
		return isNno;
	}

	public static void setNno(boolean isNno) {
		EastPlayerThread.isNno = isNno;
	}

	public static boolean isWno() {
		return isWno;
	}

	public static void setWno(boolean isWno) {
		EastPlayerThread.isWno = isWno;
	}
}
