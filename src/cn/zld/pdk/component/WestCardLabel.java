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
public class WestCardLabel extends JLabel {

	private int clickCount = 0;
	private WestCardLabel cl = this;

	public WestCardLabel(CardInfo card) {
		super();
		setIcon(SwingResourceManager.getIcon(SouthCardPanel.class,
				"/cn/zld/pdk/skin/poker/limages/" + card.getCardF()
						+ card.getCardC() + ".gif"));
		setSize(new Dimension(122, 81));
	}

	public WestCardLabel(CardInfo card, final JPanel body_panel) {
		super();
		setIcon(SwingResourceManager.getIcon(SouthCardPanel.class,
				"/cn/zld/pdk/skin/poker/images/wepokerbg.jpg"));
		setSize(new Dimension(122, 81));
	}
}
