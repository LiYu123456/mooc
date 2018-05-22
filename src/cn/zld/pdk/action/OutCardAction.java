package cn.zld.pdk.action;

import java.applet.AudioClip;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import cn.zld.pdk.pojo.CardInfo;
import cn.zld.pdk.pojo.Constants;

/**
 * 对即将打出的牌的动作处理
 *
 * @author 张立冬
 * @project 跑得快游戏开发 2010-9-7
 */
public class OutCardAction {

	private static AudioClip audio;

	/**
	 * 对出牌的合法性进行判断
	 *
	 * @return:如果合法返回true,如果不合法返回false
	 */
	public static int judgeOutCards(List<CardInfo> cards) {
		// 如果出的牌的组合有以下几种情况
		// 1.一对对子 2张
		// 2.多对对子且为连对 大于等于6张
		// 3.顺子 大于等于5张的顺子
		// 4.炸弹 4张 四带二 四带两对 6张
		// 5.三带一 三带一对 三张不带
		if (cards.size() == 0) {
			URL url = OutCardAction.class
					.getResource("/cn/zld/pdk/skin/poker/sound/clock.wav");
			setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
			return Constants.IS_NOCARDS;
		} else if (cards.size() == 1) {
			URL url = OutCardAction.class
					.getResource("/cn/zld/pdk/skin/poker/sound/"
							+ cards.get(0).getCardC() + ".wav");
			setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
			return Constants.IS_ONESINGLE;
		} else {
			Set<Integer> set = new HashSet<Integer>();
			for (int i = 0; i < cards.size(); i++) {
				set.add(cards.get(i).getCardC());
			}
			int size = set.size();
			if (cards.size() == 2 && size == 1) {// 对子
				URL url = OutCardAction.class
						.getResource("/cn/zld/pdk/skin/poker/sound/dui"
								+ cards.get(0).getCardC() + ".wav");
				setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
				return Constants.IS_DOUBLEONE;
			} else if (cards.size() == 3 && size == 1) {// 三个
				URL url = OutCardAction.class
						.getResource("/cn/zld/pdk/skin/poker/sound/sange.wav");
				setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
				return Constants.IS_THREENOONE;
			} else if (cards.size() == 4) {// 四张牌
				if (size == 1) {// 炸弹
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/zhadan.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_BOOM;
				} else if (size == 2
						&& cards.get(1).getCardC() == cards.get(2).getCardC()
						&& (cards.get(0).getCardC() == cards.get(1).getCardC() || cards
								.get(3).getCardC() == cards.get(1).getCardC())) {// 有三张相等
					// 三带一
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/sandaiyi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_THREEWITHONE;
				}
			} else if (cards.size() == 5) {// 五张牌
				if (size == 2
						&& (cards.get(0).getCardC() == cards.get(1).getCardC() && cards
								.get(3).getCardC() == cards.get(4).getCardC())) {// 前两张和最后两张要相等
					// 三带一对
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/sandaiyidui.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_THREEWITHTWO;
				} else if (size == 5
						&& cards.get(4).getCardC() - cards.get(0).getCardC() == 4) {// 顺子
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_FIVEORDER;
				}
			} else if (cards.size() == 6) {// 六张牌
				if (size == 2) {
					if (cards.get(3).getCardC() - cards.get(2).getCardC() == 1) {// 不带一张牌的飞机
						URL url = OutCardAction.class
								.getResource("/cn/zld/pdk/skin/poker/sound/feiji.wav");
						setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
						return Constants.IS_TWOTHREENOWITH;
					} else if (cards.get(3).getCardC() == cards.get(2)
							.getCardC()
							&& (cards.get(0).getCardC() == cards.get(1)
									.getCardC() || cards.get(4).getCardC() == cards
									.get(5).getCardC())) {// 四带一对
						URL url = OutCardAction.class
								.getResource("/cn/zld/pdk/skin/poker/sound/sidaier.wav");
						setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
						return Constants.IS_FOUTWITHTWO;
					}
				} else if (size == 3) {
					if (cards.get(3).getCardC() - cards.get(1).getCardC() == 1
							&& cards.get(5).getCardC()
									- cards.get(3).getCardC() == 1
							&& cards.get(2).getCardC()
									- cards.get(0).getCardC() == 1
							&& cards.get(4).getCardC()
									- cards.get(2).getCardC() == 1) {// 连对
						URL url = OutCardAction.class
								.getResource("/cn/zld/pdk/skin/poker/sound/liandui.wav");
						setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
						return Constants.IS_TWOTHREENOWITH;
					} else if (cards.get(3).getCardC() == cards.get(2)
							.getCardC()
							&& (cards.get(0).getCardC() != cards.get(1)
									.getCardC() || cards.get(4).getCardC() != cards
									.get(5).getCardC())) {// 四带两张不一样
						URL url = OutCardAction.class
								.getResource("/cn/zld/pdk/skin/poker/sound/sidaier.wav");
						setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
						return Constants.IS_FOUTWITHTWO;
					}
				} else if (size == 6
						&& cards.get(5).getCardC() - cards.get(0).getCardC() == 5) {// 顺子
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_SIXORDER;
				}
			} else if (cards.size() == 7 && size == 7
					&& cards.get(6).getCardC() - cards.get(0).getCardC() == 6) {// 七张牌
				URL url = OutCardAction.class
						.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
				setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
				return Constants.IS_SEVENORDER;
			} else if (cards.size() == 8) {// 八张牌
				if (size == 3
						&& (cards.get(1).getCardC() != cards.get(2).getCardC()
								|| cards.get(3).getCardC() != cards.get(4)
										.getCardC() || cards.get(5).getCardC() != cards
								.get(6).getCardC())
						&& cards.get(0).getCardC() == cards.get(1).getCardC()
						&& cards.get(2).getCardC() == cards.get(3).getCardC()
						&& cards.get(4).getCardC() == cards.get(5).getCardC()
						&& cards.get(6).getCardC() == cards.get(6).getCardC()) {// 四带两对
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/sidailiangdui.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_FOUTWITHFOURP;
				} else if (size == 3
						&& (cards.get(3).getCardC() - cards.get(2).getCardC() == 1 || cards
								.get(5).getCardC()
								- cards.get(4).getCardC() == 1)
						&& (cards.get(0).getCardC() == cards.get(1).getCardC() || cards
								.get(6).getCardC() == cards.get(7).getCardC())) {// 带一对的飞机
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/feiji.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_TWOTHREEWITHTWO;
				} else if (size == 4) {
					if (cards.get(7).getCardC() - cards.get(0).getCardC() == 3
							&& cards.get(0).getCardC() == cards.get(1)
									.getCardC()
							&& cards.get(2).getCardC() == cards.get(3)
									.getCardC()
							&& cards.get(4).getCardC() == cards.get(5)
									.getCardC()
							&& cards.get(6).getCardC() == cards.get(7)
									.getCardC()) {// 四对的连对
						URL url = OutCardAction.class
								.getResource("/cn/zld/pdk/skin/poker/sound/liandui.wav");
						setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
						return Constants.IS_DOUBLEFOUE;
					} else if ((cards.get(0).getCardC() != cards.get(1)
							.getCardC() || cards.get(6).getCardC() != cards
							.get(7).getCardC())
							&& (cards.get(3).getCardC()
									- cards.get(2).getCardC() == 1
									|| cards.get(4).getCardC()
											- cards.get(3).getCardC() == 1 || cards
									.get(5).getCardC()
									- cards.get(4).getCardC() == 1)) {// 飞机带两张
						URL url = OutCardAction.class
								.getResource("/cn/zld/pdk/skin/poker/sound/feiji.wav");
						setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
						return Constants.IS_TWOTHREEWITHTWO;
					}
				} else if (size == 8
						&& cards.get(7).getCardC() - cards.get(0).getCardC() == 7) {
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_EIGHTORDER;
				}
			} else if (cards.size() == 9) {// 九张牌
				if (size == 3
						&& cards.get(3).getCardC() - cards.get(2).getCardC() == 1
						&& cards.get(6).getCardC() - cards.get(5).getCardC() == 1) {// 三个三个
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/feiji.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_THREETHREENOWITH;
				} else if (size == 9
						&& cards.get(8).getCardC() - cards.get(0).getCardC() == 8) {// 顺子
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_NINEORDER;
				}

			} else if (cards.size() == 10) {// 十张牌
				if (size == 5
						&& cards.get(9).getCardC() - cards.get(0).getCardC() == 4
						&& cards.get(0).getCardC() == cards.get(1).getCardC()
						&& cards.get(2).getCardC() == cards.get(3).getCardC()
						&& cards.get(4).getCardC() == cards.get(5).getCardC()
						&& cards.get(6).getCardC() == cards.get(7).getCardC()
						&& cards.get(8).getCardC() == cards.get(9).getCardC()) {// 五对的
					// 连对
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/liandui.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_DOUBLEFIVE;

				} else if (size == 4) {// 带两对的飞机
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/feiji.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_TWOTHREEWITHFOUR;
				} else if (size == 10
						&& cards.get(9).getCardC() - cards.get(0).getCardC() == 9) {// 顺子
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_TENORDER;
				}

			} else if (cards.size() == 11) {// 十一张牌
				if (size == 11
						&& cards.get(10).getCardC() - cards.get(0).getCardC() == 10) {// 顺子
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_ELEVENORDER;
				}
			} else if (cards.size() == 12) {// 十二张牌
				if (size == 12
						&& cards.get(11).getCardC() - cards.get(0).getCardC() == 11) {// 顺子
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_TWELVEORDER;
				}
			} else if (cards.size() == 13) {// 十三张牌
				if (size == 13
						&& cards.get(12).getCardC() - cards.get(0).getCardC() == 12) {// 顺子
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // 声音剪辑对象
					return Constants.IS_THIRETENORDER;
				}
			}
		}
		return Constants.IS_ILLEGLE;
	}

	/**
	 * 搜索玩家可以出的牌
	 *
	 * @param myCards
	 * @return:返回玩家可以出的牌
	 */
	public static List<CardInfo> searchCards(int type,
			List<CardInfo> frontCards, List<CardInfo> myCards) {
		List<CardInfo> outCards = new ArrayList<CardInfo>();
		List<CardInfo> newCards = new ArrayList<CardInfo>();
		newCards=myCards;
		if (type == Constants.IS_ONESINGLE) { // 单张
			for (int i = 0; i < newCards.size(); i++) {
				if (myCards.get(i).getCardC() > frontCards.get(0).getCardC()) {
					outCards.add(myCards.get(i));
					myCards.remove(i);
					i=newCards.size();
					judgeOutCards(outCards);
				}
			}
			judgeOutCards(outCards);
		} else if (type == Constants.IS_DOUBLEONE) {// 一对
			for (int i = 0; i < newCards.size() - 1; i++) {
				if (myCards.get(i).getCardC() > frontCards.get(0).getCardC()
						&& myCards.get(i).getCardC() == myCards.get(i + 1)
								.getCardC()) {
					outCards.add(myCards.get(i));
					outCards.add(myCards.get(i+1));
					myCards.remove(outCards.get(0));
					myCards.remove(outCards.get(1));
					judgeOutCards(outCards);
					break;
				}
			}
		} else if (type == Constants.IS_DOUBLETHREE) {// 三对连对
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_DOUBLEFOUE) {// 四对连对
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_DOUBLEFIVE) {// 五对连对
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_DOUBLESIX) {// 六对连对
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_THREENOONE) {// 三个
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_THREEWITHONE) {// 三带一

		} else if (type == Constants.IS_THREEWITHTWO) {// 三带二

		} else if (type == Constants.IS_BOOM) {// 炸弹
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_FOUTWITHTWO) {// 四带二
		} else if (type == Constants.IS_FOUTWITHFOURP) {// 四带两对

		} else if (type == Constants.IS_FIVEORDER) {// 5顺子
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_SIXORDER) {// 6顺子
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_SEVENORDER) {// 7顺子
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_EIGHTORDER) {// 8顺子
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_NINEORDER) {// 9顺子
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_TENORDER) {// 10顺子
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_ELEVENORDER) {// 11顺子
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_TWELVEORDER) {// 12顺子
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_THIRETENORDER) {// 13顺子
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_TWOTHREENOWITH) {// 两个三张飞机不带
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_TWOTHREEWITHTWO) {// 两个三张带两张
		} else if (type == Constants.IS_TWOTHREEWITHFOUR) {// 两个三张带两对

		} else if (type == Constants.IS_THREETHREENOWITH) {// 三个三张飞机不带
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_THREETHREEWITHTHREE) {// 三个三张带三张
		}
		return outCards;
	}

	public static void setAudio(AudioClip audio) {
		OutCardAction.audio = audio;
	}

	public static AudioClip getAudio() {
		return audio;
	}

	public static List<CardInfo> isHave(int type, List<CardInfo> frontCards,
			List<CardInfo> myCards) {
		List<CardInfo> outCards=new ArrayList<CardInfo>();
		List<CardInfo> tempCards=new ArrayList<CardInfo>();
		int msize = myCards.size();
		int fsize = frontCards.size();
		for (int i = 0; i < msize; i++) {
			if (myCards.get(i).getCardC() > frontCards.get(0).getCardC()) {
				if (i + fsize > 12) {// 如果之后的张数加起来不够说明没有
					break;
				} else {
					for (int j = i; j < i + fsize-1; j++) {// 够就取出同样多的牌进行判断
						tempCards.add(myCards.get(j));
					}
					if (judgeOutCards(tempCards) == type) {// 如果类型相同就说明存在
						for (int p = 0; p < tempCards.size(); p++) {
							myCards.remove(tempCards.get(p));
						}
						outCards=tempCards;
						return outCards;
					}
				}
			}
		}
		return outCards;
	}

}
