package cn.zld.pdk.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import cn.zld.pdk.pojo.CardInfo;
import cn.zld.pdk.pojo.PlayerInfo;

/**
 * ϵͳ��ʼ��
 *
 * @author ������
 * @project �ܵÿ���Ϸ���� 2010-9-3
 */
public class InitAction {

	private static List<CardInfo> cards = new ArrayList<CardInfo>();
	private static String[] cardF = new String[] { "+", "-", "[", "]" };// �ƵĻ�ɫ�趨
	private static List<PlayerInfo> plays;// �����


	public  static  List<PlayerInfo> allInit() {
		plays=new ArrayList<PlayerInfo>();
		plays.add(new PlayerInfo("С��",new ArrayList<CardInfo>(),1));
		plays.add(new PlayerInfo("С��",new ArrayList<CardInfo>(),2));
		plays.add(new PlayerInfo("С��",new ArrayList<CardInfo>(),3));
		plays.add(new PlayerInfo("С��",new ArrayList<CardInfo>(),4));
		initCards();
		initPlayerCards(plays);
		for(int i=0;i<plays.size();i++){
			reOrder(plays.get(i).getPlayerCards());
		}
		return plays;
	}

	/**
	 * ��ʼ����
	 */
	public static  void initCards() {
		for (int j = 0; j < cardF.length; j++) {
			for (int i = 1; i < 14; i++) {
				cards.add(new CardInfo(cardF[j] , i,false));
			}
		}
	}

	/**
	 * ��ʼ����ҵ���
	 *
	 * @param players:�����
	 */
	public static void initPlayerCards(List<PlayerInfo> players) {
		Random rand = new Random();// �������
		int pear = 53;// ����
		for (int i = 0; i < 13; i++) {
			for (int q = 0; q < 4; q++) {
				int r = rand.nextInt(pear);
				if (r != 0&&r<cards.size()) {
					players.get(q).getPlayerCards().add(cards.get(r));
					cards.remove(r);
					if(cards.size()==1){
						players.get(3).getPlayerCards().add(cards.get(0));
						break;
					}
					pear--;
				}else{
					q--;
				}
			}
		}

	}


	/**
	 * ���Ƶ���������
	 * ����
	 * @param cards:Ҫ�������
	 */
	public static  void reOrder(List<CardInfo> cards){
		for(int i=0;i<cards.size();i++){
			for(int j=0;j<cards.size()-i-1;j++){
				if(cards.get(j).getCardC()>cards.get(j+1).getCardC()){
					CardInfo card1=cards.get(j);
					CardInfo card2=cards.get(j+1);
					cards.set(j, card2);
					cards.set(j+1, card1);
				}
			}
		}
	}

}
