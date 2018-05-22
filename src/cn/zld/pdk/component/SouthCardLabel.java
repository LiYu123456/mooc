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
 * 主用户牌容器
 * @author 张立冬
 * @project 跑得快游戏开发
 * 2010-9-6
 */
public class SouthCardLabel extends JLabel {

	private int clickCount = 0;
	private SouthCardLabel cl=this;

	public SouthCardLabel() {
		setIcon(SwingResourceManager.getIcon(SouthCardPanel.class,
				"/cn/zld/pdk/skin/poker/images/sno.png"));
		setSize(new Dimension(81, 122));
	}

	public SouthCardLabel(final CardInfo card,final JPanel body_panel) {
		super();
		MouseListener ml = new MouseAdapter() {
			public void mousePressed(MouseEvent e) {
				clickCount++;
				JLabel lb = (JLabel) e.getSource();
				int y = lb.getY();
				if (clickCount%2 == 0) {
					lb.setLocation(lb.getX(), y + 20);
					card.setSelected(false);
				}else{
					lb.setLocation(lb.getX(), y - 20);
					card.setSelected(true);
				}
				javax.swing.SwingUtilities.updateComponentTreeUI(body_panel);
			}
		};
		setIcon(SwingResourceManager.getIcon(SouthCardPanel.class,
				"/cn/zld/pdk/skin/poker/images/" + card.getCardF()
						+ card.getCardC() + ".gif"));
		setSize(new Dimension(81, 122));
	    this.addMouseListener(ml);

	}
}
