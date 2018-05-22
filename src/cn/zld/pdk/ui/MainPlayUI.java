package cn.zld.pdk.ui;

import java.applet.AudioClip;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

import cn.zld.pdk.action.InitAction;
import cn.zld.pdk.action.OutCardAction;
import cn.zld.pdk.component.EastCardPanel;
import cn.zld.pdk.component.NorthCardPanel;
import cn.zld.pdk.component.SouthCardPanel;
import cn.zld.pdk.component.WestCardPanel;
import cn.zld.pdk.pojo.CardInfo;
import cn.zld.pdk.pojo.Constants;
import cn.zld.pdk.pojo.PlayerInfo;
import cn.zld.pdk.thread.EastPlayerThread;
import cn.zld.pdk.thread.NorthPlayerThread;
import cn.zld.pdk.thread.WestPlayerThread;

/**
 * 游戏主界面
 *
 * @author 张立冬
 * @project 跑得快游戏开发 2010-9-3
 */
@SuppressWarnings("serial")
public class MainPlayUI extends Thread {

	private static List<PlayerInfo> players;// 所有玩家
	private JFrame jf;
	private static int state;// 游戏状态
	private static List<CardInfo> soutCards;// 南方玩家出的牌
	private List<CardInfo> noutCards;// 北方玩家出和牌
	private List<CardInfo> woutCards;// 西方玩家出的牌
	private List<CardInfo> eoutCards;// 东方玩家出的牌
	private static boolean isSno;
	private static boolean isEno;
	private static boolean isNno;
	private static boolean isWno;
	private static PlayerInfo nplayer;// 北方玩家
	private static PlayerInfo splayer;// 南方玩家
	private static PlayerInfo wplayer;// 西方玩家
	private static PlayerInfo eplayer;// 东方玩家
	private Thread td;
	private static JPanel panel_nplayer = new JPanel();
	private static JPanel panel_splayer = new JPanel();
	private static JPanel panel_wplayer = new JPanel();
	private static JPanel panel_eplayer = new JPanel();
	private static JPanel panel_nout = new JPanel();
	private static JPanel panel_sout = new JPanel();
	private static JPanel panel_wout = new JPanel();
	private static JPanel panel_eout = new JPanel();
	private JButton button_out = new JButton();
	private JButton button_no = new JButton();

	/**
	 * Create the frame
	 */
	public MainPlayUI() {
		jf = new JFrame("冬冬跑得快游戏  beta 1.0");
		jf.setResizable(false);
		final AudioClip bgsound = java.applet.Applet.newAudioClip(getClass()
				.getResource("/cn/zld/pdk/skin/poker/sound/bgsound.wav")); // 声音剪辑对象2
		jf.getContentPane().setBackground(new Color(60, 179, 113));
		jf.setBounds(100, 100, 783, 729);
		jf.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		final JPanel panel = new JPanel();
		panel.setOpaque(false);
		panel.setLayout(new BorderLayout());
		panel.setPreferredSize(new Dimension(0, 160));
		jf.getContentPane().add(panel, BorderLayout.NORTH);

		/**
		 * 北方玩家所坐
		 */
		panel_nplayer.setLayout(new BorderLayout());
		panel_nplayer.setOpaque(false);
		panel_nplayer.setPreferredSize(new Dimension(300, 160));
		panel.add(panel_nplayer);

		final JPanel panel_nplayer_f = new JPanel();
		panel_nplayer_f.setLayout(null);
		panel_nplayer_f.setOpaque(false);
		panel_nplayer_f.setPreferredSize(new Dimension(0, 25));
		panel.add(panel_nplayer_f, BorderLayout.SOUTH);

		final JPanel panel_1 = new JPanel();
		panel_1.setOpaque(false);
		panel_1.setLayout(new BorderLayout());
		panel_1.setPreferredSize(new Dimension(160, 0));
		jf.getContentPane().add(panel_1, BorderLayout.WEST);

		/**
		 * 西方玩家所坐
		 */
		panel_wplayer.setLayout(new BorderLayout());
		panel_wplayer.setOpaque(false);
		panel_wplayer.setPreferredSize(new Dimension(160, 300));
		panel_wplayer.setBackground(new Color(210, 105, 30));
		panel_1.add(panel_wplayer);

		final JPanel panel_wplayer_f = new JPanel();
		panel_wplayer_f.setOpaque(false);
		panel_wplayer_f.setPreferredSize(new Dimension(25, 0));
		panel_1.add(panel_wplayer_f, BorderLayout.EAST);

		final JPanel panel_2 = new JPanel();
		panel_2.setOpaque(false);
		panel_2.setLayout(new BorderLayout());
		panel_2.setPreferredSize(new Dimension(160, 0));
		jf.getContentPane().add(panel_2, BorderLayout.EAST);

		/**
		 * 东方玩家所坐
		 */
		panel_eplayer.setOpaque(false);
		panel_eplayer.setLayout(new BorderLayout());
		panel_eplayer.setPreferredSize(new Dimension(160, 300));
		panel_eplayer.setBackground(new Color(210, 105, 30));
		panel_2.add(panel_eplayer);

		final JPanel panel_eplayer_f = new JPanel();
		panel_eplayer_f.setOpaque(false);
		panel_eplayer_f.setPreferredSize(new Dimension(25, 0));
		panel_2.add(panel_eplayer_f, BorderLayout.WEST);

		final JPanel panel_3 = new JPanel();
		panel_3.setOpaque(false);
		panel_3.setLayout(new BorderLayout());
		panel_3.setPreferredSize(new Dimension(0, 170));
		jf.getContentPane().add(panel_3, BorderLayout.SOUTH);

		panel_splayer.setLayout(new BorderLayout());
		panel_splayer.setOpaque(false);
		panel_splayer.setPreferredSize(new Dimension(300, 160));
		/**
		 * 主用户所坐位置
		 */
		panel_3.add(panel_splayer);

		final JPanel panel_splayer_f = new JPanel();
		panel_splayer_f.setLayout(new FlowLayout());
		panel_splayer_f.setOpaque(false);
		panel_splayer_f.setPreferredSize(new Dimension(0, 25));
		panel_3.add(panel_splayer_f, BorderLayout.NORTH);

		button_no.setMargin(new Insets(0, 14, 0, 14));
		button_no.addActionListener(new ActionListener() {
			public void actionPerformed(final ActionEvent e) {
				panel_sout.removeAll();
				panel_sout.add(new SouthCardPanel());
				URL url = OutCardAction.class
						.getResource("/cn/zld/pdk/skin/poker/sound/buyao1.wav");
				AudioClip audio = java.applet.Applet.newAudioClip(url);
				audio.play();
				initPlayerCard();
				EastPlayerThread.setSno(true);
				EastPlayerThread.setState(2);
				button_out.setVisible(false);
				button_no.setVisible(false);
			}
		});
		button_no.setText("不出");
		panel_splayer_f.add(button_no);

		final JPanel panel_center = new JPanel();
		panel_center.setLayout(null);
		panel_center.setOpaque(false);
		jf.getContentPane().add(panel_center, BorderLayout.CENTER);

		panel_sout.setLayout(new BorderLayout());
		panel_sout.setOpaque(false);
		panel_sout.setBounds(0, 240, 457, 131);
		panel_center.add(panel_sout);

		panel_nout.setLayout(new BorderLayout());
		panel_nout.setOpaque(false);
		panel_nout.setBounds(0, 0, 457, 134);
		panel_center.add(panel_nout);

		panel_wout.setLayout(new BorderLayout());
		panel_wout.setOpaque(false);
		panel_wout.setBounds(0, 0, 163, 371);
		panel_center.add(panel_wout);

		panel_eout.setLayout(new BorderLayout());
		panel_eout.setOpaque(false);
		panel_eout.setBounds(294, 0, 163, 371);
		panel_center.add(panel_eout);
		jf.setLocationRelativeTo(null);

		/**
		 * 将出牌容器设给各个玩家
		 */
		EastPlayerThread.setPanel(panel_eout);
		NorthPlayerThread.setPanel(panel_nout);
		WestPlayerThread.setPanel(panel_wout);

		/**
		 * 游戏开始按钮事件处理
		 */
		final JButton button_begin = new JButton();
		button_begin.addActionListener(new ActionListener() {
			public void actionPerformed(final ActionEvent e) {
				bgsound.loop();
				button_out.setEnabled(true);
				players = InitAction.allInit();
				initPlayerCard();
				button_begin.setEnabled(false);
			}
		});
		button_begin.setText("开始游戏");
		button_begin.setBounds(185, 140, 86, 22);
		panel_center.add(button_begin);

		final JButton button_reset = new JButton();
		button_reset.addActionListener(new ActionListener() {
			public void actionPerformed(final ActionEvent e) {
				players = null;
				panel_nplayer.removeAll();
				panel_splayer.removeAll();
				panel_wplayer.removeAll();
				panel_eplayer.removeAll();
				panel_sout.removeAll();
				panel_eout.removeAll();
				panel_nout.removeAll();
				panel_wout.removeAll();
				button_begin.setEnabled(true);
				button_out.setVisible(true);
				button_no.setVisible(true);
				state = 1;
				javax.swing.SwingUtilities.updateComponentTreeUI(jf);

			}
		});
		button_reset.setText("重置游戏");
		button_reset.setBounds(185, 160, 86, 22);
		panel_center.add(button_reset);
		/**
		 * 出牌按钮事件监听
		 */
		button_out.addActionListener(new ActionListener() {
			public void actionPerformed(final ActionEvent e) {
				List<CardInfo> cards = players.get(1).getPlayerCards();
				soutCards = new ArrayList<CardInfo>();
				for (int i = 0; i < cards.size(); i++) {
					CardInfo card = cards.get(i);
					if (card.isSelected()) {
						soutCards.add(card);
					}
				}
				int justype = OutCardAction.judgeOutCards(soutCards);
				if (justype != Constants.IS_ILLEGLE) {
					state++;
					for (int i = 0; i < soutCards.size(); i++) {
						players.get(1).getPlayerCards()
								.remove(soutCards.get(i));
					}
					panel_sout.removeAll();
					panel_sout.add(new SouthCardPanel(soutCards, 180, 0));
					OutCardAction.getAudio().play();
					button_out.setVisible(false);
					button_no.setVisible(false);
					initPlayerCard();
					EastPlayerThread.setSno(false);
					EastPlayerThread.setFrontCards(getSoutCards());
					EastPlayerThread.setType(justype);
					EastPlayerThread.setState(2);
					EastPlayerThread.setPlayer(getEplayer());
					// eastTurn();
				} else {
					javax.swing.JOptionPane.showMessageDialog(null,
							"所选的牌不符合出牌规则");
				}
			}
		});
		button_out.setMargin(new Insets(0, 14, 0, 14));
		button_out.setEnabled(false);
		button_out.setText("出牌");
		panel_splayer_f.add(button_out);
		jf.setVisible(true);
		//
	}

	/**
	 * 初始化玩家的牌
	 */
	public static void initPlayerCard() {
		panel_nplayer.removeAll();
		panel_splayer.removeAll();
		panel_wplayer.removeAll();
		panel_eplayer.removeAll();
		nplayer = players.get(0);
		panel_nplayer.add(new NorthCardPanel(nplayer.getPlayerCards(), 355, 0,
				2));
		splayer = players.get(1);
		panel_splayer
				.add(new SouthCardPanel(splayer.getPlayerCards(), 355, 22));
		wplayer = players.get(2);
		panel_wplayer.add(new WestCardPanel(wplayer.getPlayerCards(), 0, 100,1));
		setEplayer(players.get(3));
		panel_eplayer.add(new EastCardPanel(getEplayer().getPlayerCards(), 15,
				100, 1));

	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		while (true) {
			try {
				if (state == 1) {
					button_out.setVisible(true);
					button_no.setVisible(true);
				}

				sleep(500);
				javax.swing.SwingUtilities.updateComponentTreeUI(jf);

			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

	public static List<PlayerInfo> getPlayers() {
		return players;
	}

	public static void setPlayers(List<PlayerInfo> players) {
		MainPlayUI.players = players;
	}

	public static int getstate() {
		return state;
	}

	public static void setState(int state) {
		MainPlayUI.state = state;
	}

	public static List<CardInfo> getSoutCards() {
		return soutCards;
	}

	public static void setSoutCards(List<CardInfo> soutCards) {
		MainPlayUI.soutCards = soutCards;
	}

	public static JPanel getPanel_nout() {
		return panel_nout;
	}

	public static void setPanel_nout(JPanel panel_nout) {
		MainPlayUI.panel_nout = panel_nout;
	}

	public static JPanel getPanel_sout() {
		return panel_sout;
	}

	public static void setPanel_sout(JPanel panel_sout) {
		MainPlayUI.panel_sout = panel_sout;
	}

	public static JPanel getPanel_wout() {
		return panel_wout;
	}

	public static void setPanel_wout(JPanel panel_wout) {
		MainPlayUI.panel_wout = panel_wout;
	}

	public static JPanel getPanel_eout() {
		return panel_eout;
	}

	public static void setPanel_eout(JPanel panel_eout) {
		MainPlayUI.panel_eout = panel_eout;
	}

	public static void setEplayer(PlayerInfo eplayer) {
		MainPlayUI.eplayer = eplayer;
	}

	public static PlayerInfo getEplayer() {
		return eplayer;
	}

	public static boolean isSno() {
		return isSno;
	}

	public static void setSno(boolean isSno) {
		MainPlayUI.isSno = isSno;
	}

	public static boolean isEno() {
		return isEno;
	}

	public static void setEno(boolean isEno) {
		MainPlayUI.isEno = isEno;
	}

	public static boolean isNno() {
		return isNno;
	}

	public static void setNno(boolean isNno) {
		MainPlayUI.isNno = isNno;
	}

	public static boolean isWno() {
		return isWno;
	}

	public static void setWno(boolean isWno) {
		MainPlayUI.isWno = isWno;
	}

	public static PlayerInfo getNplayer() {
		return nplayer;
	}

	public static void setNplayer(PlayerInfo nplayer) {
		MainPlayUI.nplayer = nplayer;
	}

	public static PlayerInfo getSplayer() {
		return splayer;
	}

	public static void setSplayer(PlayerInfo splayer) {
		MainPlayUI.splayer = splayer;
	}

	public static PlayerInfo getWplayer() {
		return wplayer;
	}

	public static void setWplayer(PlayerInfo wplayer) {
		MainPlayUI.wplayer = wplayer;
	}

}
