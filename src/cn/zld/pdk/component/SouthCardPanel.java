package cn.zld.pdk.component;

import java.awt.Dimension;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.List;

import javax.swing.JLabel;
import javax.swing.JPanel;

import cn.zld.pdk.pojo.CardInfo;

import com.swtdesigner.SwingResourceManager;

/**
 * 我的牌主界面
 * @author 张立冬
 * @project 跑得快游戏开发
 * 2010-9-6
 */
public class SouthCardPanel extends JPanel {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	private JPanel body_panel = this;
	private List<CardInfo> cards;

	/**
	 * Create the panel
	 */
	public SouthCardPanel(List<CardInfo> cards,int x,int y) {
		super();
		setLayout(null);
		setOpaque(false);
		for (int i = 0; i < cards.size(); i++) {
			CardInfo card = cards.get(i);
			final JLabel label = new SouthCardLabel(card, body_panel);
			label.setLocation(x+cards.size()*10-i*25, y);
			add(label);
		}
	}

	public SouthCardPanel(){
		super();
		setLayout(null);
		setOpaque(false);
		final JLabel label = new SouthCardLabel();
		label.setLocation(180, 0);
		add(label);
	}
}
