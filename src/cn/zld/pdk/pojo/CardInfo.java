package cn.zld.pdk.pojo;

/**
 * 扑克牌信息
 *
 * @author 张立冬
 * @project 跑得快游戏开发 2010-9-3
 */
public class CardInfo {

	private String cardF;//牌的花色
	private int cardC;//牌的点数
	private boolean  isSelected;//是否被选中

	public String toString(){
		return  "花色:"+cardF+"    大小:"+cardC+"   选中："+isSelected;
	}

	public CardInfo(){}


	public CardInfo(String cardF,int cardC,boolean selected){
		this.cardF=cardF;
		this.cardC=cardC;
		this.isSelected=selected;
	}

	public String getCardF() {
		return cardF;
	}

	public void setCardF(String cardF) {
		this.cardF = cardF;
	}

	public int getCardC() {
		return cardC;
	}

	public void setCardC(int cardC) {
		this.cardC = cardC;
	}

	public boolean isSelected() {
		return isSelected;
	}

	public void setSelected(boolean isSelected) {
		this.isSelected = isSelected;
	}



}
