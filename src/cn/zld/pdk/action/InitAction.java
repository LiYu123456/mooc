package cn.zld.pdk.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import cn.zld.pdk.pojo.CardInfo;
import cn.zld.pdk.pojo.PlayerInfo;

/**
 * 系统初始化
 *
 * @author 张立冬
 * @project 跑得快游戏开发 2010-9-3
 */
public class InitAction {

	private static List<CardInfo> cards = new ArrayList<CardInfo>();
	private static String[] cardF = new String[] { "+", "-", "[", "]" };// 牌的花色设定
	private static List<PlayerInfo> plays;// 玩家组


	public  static  List<PlayerInfo> allInit() {
		plays=new ArrayList<PlayerInfo>();
		plays.add(new PlayerInfo("小张",new ArrayList<CardInfo>(),1));
		plays.add(new PlayerInfo("小张",new ArrayList<CardInfo>(),2));
		plays.add(new PlayerInfo("小张",new ArrayList<CardInfo>(),3));
		plays.add(new PlayerInfo("小张",new ArrayList<CardInfo>(),4));
		initCards();
		initPlayerCards(plays);
		for(int i=0;i<plays.size();i++){
			reOrder(plays.get(i).getPlayerCards());
		}
		return plays;
	}

	/**
	 * 初始化牌
	 */
	public static  void initCards() {
		for (int j = 0; j < cardF.length; j++) {
			for (int i = 1; i < 14; i++) {
				cards.add(new CardInfo(cardF[j] , i,false));
			}
		}
	}

	/**
	 * 初始化玩家的牌
	 *
	 * @param players:玩家组
	 */
	public static void initPlayerCards(List<PlayerInfo> players) {
		Random rand = new Random();// 随机对象
		int pear = 53;// 种子
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
	 * 对牌的重新排序
	 * 升序
	 * @param cards:要排序的牌
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
