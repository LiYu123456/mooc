package cn.zld.pdk.component;

import java.util.List;

import javax.swing.JLabel;
import javax.swing.JPanel;

import cn.zld.pdk.pojo.CardInfo;

/**
 * ������ҵĽ���
 *
 * @author ������
 * @project �ܵÿ���Ϸ���� 2010-9-6
 */
public class EastCardPanel extends JPanel {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	private JPanel body_panel = this;

	/**
	 * Create the panel
	 */
	public EastCardPanel(List<CardInfo> cards, int location, int y, int type) {
		super();
		setLayout(null);
		setOpaque(false);
		for (int i = 0; i < cards.size(); i++) {
			CardInfo card = cards.get(i);
			final JLabel label = new EastCardLabel(type, card, body_panel);
			label.setLocation(location, y + cards.size() * 10 - i * 15);
			add(label);
		}
	}

	public EastCardPanel() {
		super();
		setLayout(null);
		setOpaque(false);
		final JLabel label = new EastCardLabel();
		label.setLocation(100, 140);
		add(label);
	}
}
