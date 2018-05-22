package cn.zld.pdk.component;

import java.awt.Dimension;

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
public class EastCardLabel extends JLabel {


	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	public EastCardLabel() {
		setIcon(SwingResourceManager.getIcon(SouthCardPanel.class,
				"/cn/zld/pdk/skin/poker/images/eno.png"));
		setSize(new Dimension(122, 81));
	}

	public EastCardLabel(int type,CardInfo card, final JPanel body_panel) {
		super();
		if(type==1){
		setIcon(SwingResourceManager.getIcon(SouthCardPanel.class,
				"/cn/zld/pdk/skin/poker/images/wepokerbg.jpg"));
		}else{
			setIcon(SwingResourceManager.getIcon(SouthCardPanel.class,
					"/cn/zld/pdk/skin/poker/limages/" + card.getCardF()
							+ card.getCardC() + ".gif"));
		}
		setSize(new Dimension(122, 81));

	}


}
