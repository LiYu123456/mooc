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
 * �Լ���������ƵĶ�������
 *
 * @author ������
 * @project �ܵÿ���Ϸ���� 2010-9-7
 */
public class OutCardAction {

	private static AudioClip audio;

	/**
	 * �Գ��ƵĺϷ��Խ����ж�
	 *
	 * @return:����Ϸ�����true,������Ϸ�����false
	 */
	public static int judgeOutCards(List<CardInfo> cards) {
		// ��������Ƶ���������¼������
		// 1.һ�Զ��� 2��
		// 2.��Զ�����Ϊ���� ���ڵ���6��
		// 3.˳�� ���ڵ���5�ŵ�˳��
		// 4.ը�� 4�� �Ĵ��� �Ĵ����� 6��
		// 5.����һ ����һ�� ���Ų���
		if (cards.size() == 0) {
			URL url = OutCardAction.class
					.getResource("/cn/zld/pdk/skin/poker/sound/clock.wav");
			setAudio(java.applet.Applet.newAudioClip(url)); // ������������
			return Constants.IS_NOCARDS;
		} else if (cards.size() == 1) {
			URL url = OutCardAction.class
					.getResource("/cn/zld/pdk/skin/poker/sound/"
							+ cards.get(0).getCardC() + ".wav");
			setAudio(java.applet.Applet.newAudioClip(url)); // ������������
			return Constants.IS_ONESINGLE;
		} else {
			Set<Integer> set = new HashSet<Integer>();
			for (int i = 0; i < cards.size(); i++) {
				set.add(cards.get(i).getCardC());
			}
			int size = set.size();
			if (cards.size() == 2 && size == 1) {// ����
				URL url = OutCardAction.class
						.getResource("/cn/zld/pdk/skin/poker/sound/dui"
								+ cards.get(0).getCardC() + ".wav");
				setAudio(java.applet.Applet.newAudioClip(url)); // ������������
				return Constants.IS_DOUBLEONE;
			} else if (cards.size() == 3 && size == 1) {// ����
				URL url = OutCardAction.class
						.getResource("/cn/zld/pdk/skin/poker/sound/sange.wav");
				setAudio(java.applet.Applet.newAudioClip(url)); // ������������
				return Constants.IS_THREENOONE;
			} else if (cards.size() == 4) {// ������
				if (size == 1) {// ը��
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/zhadan.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_BOOM;
				} else if (size == 2
						&& cards.get(1).getCardC() == cards.get(2).getCardC()
						&& (cards.get(0).getCardC() == cards.get(1).getCardC() || cards
								.get(3).getCardC() == cards.get(1).getCardC())) {// ���������
					// ����һ
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/sandaiyi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_THREEWITHONE;
				}
			} else if (cards.size() == 5) {// ������
				if (size == 2
						&& (cards.get(0).getCardC() == cards.get(1).getCardC() && cards
								.get(3).getCardC() == cards.get(4).getCardC())) {// ǰ���ź��������Ҫ���
					// ����һ��
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/sandaiyidui.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_THREEWITHTWO;
				} else if (size == 5
						&& cards.get(4).getCardC() - cards.get(0).getCardC() == 4) {// ˳��
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_FIVEORDER;
				}
			} else if (cards.size() == 6) {// ������
				if (size == 2) {
					if (cards.get(3).getCardC() - cards.get(2).getCardC() == 1) {// ����һ���Ƶķɻ�
						URL url = OutCardAction.class
								.getResource("/cn/zld/pdk/skin/poker/sound/feiji.wav");
						setAudio(java.applet.Applet.newAudioClip(url)); // ������������
						return Constants.IS_TWOTHREENOWITH;
					} else if (cards.get(3).getCardC() == cards.get(2)
							.getCardC()
							&& (cards.get(0).getCardC() == cards.get(1)
									.getCardC() || cards.get(4).getCardC() == cards
									.get(5).getCardC())) {// �Ĵ�һ��
						URL url = OutCardAction.class
								.getResource("/cn/zld/pdk/skin/poker/sound/sidaier.wav");
						setAudio(java.applet.Applet.newAudioClip(url)); // ������������
						return Constants.IS_FOUTWITHTWO;
					}
				} else if (size == 3) {
					if (cards.get(3).getCardC() - cards.get(1).getCardC() == 1
							&& cards.get(5).getCardC()
									- cards.get(3).getCardC() == 1
							&& cards.get(2).getCardC()
									- cards.get(0).getCardC() == 1
							&& cards.get(4).getCardC()
									- cards.get(2).getCardC() == 1) {// ����
						URL url = OutCardAction.class
								.getResource("/cn/zld/pdk/skin/poker/sound/liandui.wav");
						setAudio(java.applet.Applet.newAudioClip(url)); // ������������
						return Constants.IS_TWOTHREENOWITH;
					} else if (cards.get(3).getCardC() == cards.get(2)
							.getCardC()
							&& (cards.get(0).getCardC() != cards.get(1)
									.getCardC() || cards.get(4).getCardC() != cards
									.get(5).getCardC())) {// �Ĵ����Ų�һ��
						URL url = OutCardAction.class
								.getResource("/cn/zld/pdk/skin/poker/sound/sidaier.wav");
						setAudio(java.applet.Applet.newAudioClip(url)); // ������������
						return Constants.IS_FOUTWITHTWO;
					}
				} else if (size == 6
						&& cards.get(5).getCardC() - cards.get(0).getCardC() == 5) {// ˳��
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_SIXORDER;
				}
			} else if (cards.size() == 7 && size == 7
					&& cards.get(6).getCardC() - cards.get(0).getCardC() == 6) {// ������
				URL url = OutCardAction.class
						.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
				setAudio(java.applet.Applet.newAudioClip(url)); // ������������
				return Constants.IS_SEVENORDER;
			} else if (cards.size() == 8) {// ������
				if (size == 3
						&& (cards.get(1).getCardC() != cards.get(2).getCardC()
								|| cards.get(3).getCardC() != cards.get(4)
										.getCardC() || cards.get(5).getCardC() != cards
								.get(6).getCardC())
						&& cards.get(0).getCardC() == cards.get(1).getCardC()
						&& cards.get(2).getCardC() == cards.get(3).getCardC()
						&& cards.get(4).getCardC() == cards.get(5).getCardC()
						&& cards.get(6).getCardC() == cards.get(6).getCardC()) {// �Ĵ�����
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/sidailiangdui.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_FOUTWITHFOURP;
				} else if (size == 3
						&& (cards.get(3).getCardC() - cards.get(2).getCardC() == 1 || cards
								.get(5).getCardC()
								- cards.get(4).getCardC() == 1)
						&& (cards.get(0).getCardC() == cards.get(1).getCardC() || cards
								.get(6).getCardC() == cards.get(7).getCardC())) {// ��һ�Եķɻ�
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/feiji.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
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
									.getCardC()) {// �ĶԵ�����
						URL url = OutCardAction.class
								.getResource("/cn/zld/pdk/skin/poker/sound/liandui.wav");
						setAudio(java.applet.Applet.newAudioClip(url)); // ������������
						return Constants.IS_DOUBLEFOUE;
					} else if ((cards.get(0).getCardC() != cards.get(1)
							.getCardC() || cards.get(6).getCardC() != cards
							.get(7).getCardC())
							&& (cards.get(3).getCardC()
									- cards.get(2).getCardC() == 1
									|| cards.get(4).getCardC()
											- cards.get(3).getCardC() == 1 || cards
									.get(5).getCardC()
									- cards.get(4).getCardC() == 1)) {// �ɻ�������
						URL url = OutCardAction.class
								.getResource("/cn/zld/pdk/skin/poker/sound/feiji.wav");
						setAudio(java.applet.Applet.newAudioClip(url)); // ������������
						return Constants.IS_TWOTHREEWITHTWO;
					}
				} else if (size == 8
						&& cards.get(7).getCardC() - cards.get(0).getCardC() == 7) {
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_EIGHTORDER;
				}
			} else if (cards.size() == 9) {// ������
				if (size == 3
						&& cards.get(3).getCardC() - cards.get(2).getCardC() == 1
						&& cards.get(6).getCardC() - cards.get(5).getCardC() == 1) {// ��������
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/feiji.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_THREETHREENOWITH;
				} else if (size == 9
						&& cards.get(8).getCardC() - cards.get(0).getCardC() == 8) {// ˳��
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_NINEORDER;
				}

			} else if (cards.size() == 10) {// ʮ����
				if (size == 5
						&& cards.get(9).getCardC() - cards.get(0).getCardC() == 4
						&& cards.get(0).getCardC() == cards.get(1).getCardC()
						&& cards.get(2).getCardC() == cards.get(3).getCardC()
						&& cards.get(4).getCardC() == cards.get(5).getCardC()
						&& cards.get(6).getCardC() == cards.get(7).getCardC()
						&& cards.get(8).getCardC() == cards.get(9).getCardC()) {// ��Ե�
					// ����
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/liandui.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_DOUBLEFIVE;

				} else if (size == 4) {// �����Եķɻ�
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/feiji.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_TWOTHREEWITHFOUR;
				} else if (size == 10
						&& cards.get(9).getCardC() - cards.get(0).getCardC() == 9) {// ˳��
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_TENORDER;
				}

			} else if (cards.size() == 11) {// ʮһ����
				if (size == 11
						&& cards.get(10).getCardC() - cards.get(0).getCardC() == 10) {// ˳��
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_ELEVENORDER;
				}
			} else if (cards.size() == 12) {// ʮ������
				if (size == 12
						&& cards.get(11).getCardC() - cards.get(0).getCardC() == 11) {// ˳��
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_TWELVEORDER;
				}
			} else if (cards.size() == 13) {// ʮ������
				if (size == 13
						&& cards.get(12).getCardC() - cards.get(0).getCardC() == 12) {// ˳��
					URL url = OutCardAction.class
							.getResource("/cn/zld/pdk/skin/poker/sound/shunzi.wav");
					setAudio(java.applet.Applet.newAudioClip(url)); // ������������
					return Constants.IS_THIRETENORDER;
				}
			}
		}
		return Constants.IS_ILLEGLE;
	}

	/**
	 * ������ҿ��Գ�����
	 *
	 * @param myCards
	 * @return:������ҿ��Գ�����
	 */
	public static List<CardInfo> searchCards(int type,
			List<CardInfo> frontCards, List<CardInfo> myCards) {
		List<CardInfo> outCards = new ArrayList<CardInfo>();
		List<CardInfo> newCards = new ArrayList<CardInfo>();
		newCards=myCards;
		if (type == Constants.IS_ONESINGLE) { // ����
			for (int i = 0; i < newCards.size(); i++) {
				if (myCards.get(i).getCardC() > frontCards.get(0).getCardC()) {
					outCards.add(myCards.get(i));
					myCards.remove(i);
					i=newCards.size();
					judgeOutCards(outCards);
				}
			}
			judgeOutCards(outCards);
		} else if (type == Constants.IS_DOUBLEONE) {// һ��
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
		} else if (type == Constants.IS_DOUBLETHREE) {// ��������
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_DOUBLEFOUE) {// �Ķ�����
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_DOUBLEFIVE) {// �������
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_DOUBLESIX) {// ��������
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_THREENOONE) {// ����
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_THREEWITHONE) {// ����һ

		} else if (type == Constants.IS_THREEWITHTWO) {// ������

		} else if (type == Constants.IS_BOOM) {// ը��
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_FOUTWITHTWO) {// �Ĵ���
		} else if (type == Constants.IS_FOUTWITHFOURP) {// �Ĵ�����

		} else if (type == Constants.IS_FIVEORDER) {// 5˳��
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_SIXORDER) {// 6˳��
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_SEVENORDER) {// 7˳��
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_EIGHTORDER) {// 8˳��
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_NINEORDER) {// 9˳��
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_TENORDER) {// 10˳��
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_ELEVENORDER) {// 11˳��
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_TWELVEORDER) {// 12˳��
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_THIRETENORDER) {// 13˳��
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_TWOTHREENOWITH) {// �������ŷɻ�����
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_TWOTHREEWITHTWO) {// �������Ŵ�����
		} else if (type == Constants.IS_TWOTHREEWITHFOUR) {// �������Ŵ�����

		} else if (type == Constants.IS_THREETHREENOWITH) {// �������ŷɻ�����
			return isHave(type, frontCards, myCards);
		} else if (type == Constants.IS_THREETHREEWITHTHREE) {// �������Ŵ�����
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
				if (i + fsize > 12) {// ���֮�����������������˵��û��
					break;
				} else {
					for (int j = i; j < i + fsize-1; j++) {// ����ȡ��ͬ������ƽ����ж�
						tempCards.add(myCards.get(j));
					}
					if (judgeOutCards(tempCards) == type) {// ���������ͬ��˵������
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
