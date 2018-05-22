package cn.zld.pdk.component;

import java.awt.Dimension;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import javax.swing.JLabel;
import javax.swing.JPanel;

import com.swtdesigner.SwingResourceManager;

import cn.zld.pdk.pojo.CardInfo;

/**
 * 其他玩家所放
 *
 * @author 张立冬
 * @project 跑得快游戏开发 2010-9-6
 */
public class NorthCardLabel extends JLabel {

	private int clickCount = 0;
	private NorthCardLabel cl = this;

	public NorthCardLabel(CardInfo card) {
		super();
		setIcon(SwingResourceManager.getIcon(SouthCardPanel.class,
				"/cn/zld/pdk/skin/poker/images/" + card.getCardF()
						+ card.getCardC() + ".gif"));
		setSize(new Dimension(81, 122));
	}

	public NorthCardLabel(CardInfo card, final JPanel body_panel) {
		super();
		setIcon(SwingResourceManager.getIcon(SouthCardPanel.class,
				"/cn/zld/pdk/skin/poker/images/pokerbg.jpg"));
		setSize(new Dimension(81, 122));

	}
}
