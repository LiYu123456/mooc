package cn.zld.pdk.pojo;

/**
 * �˿�����Ϣ
 *
 * @author ������
 * @project �ܵÿ���Ϸ���� 2010-9-3
 */
public class CardInfo {

	private String cardF;//�ƵĻ�ɫ
	private int cardC;//�Ƶĵ���
	private boolean  isSelected;//�Ƿ�ѡ��

	public String toString(){
		return  "��ɫ:"+cardF+"    ��С:"+cardC+"   ѡ�У�"+isSelected;
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
