package cn.zld.pdk.main;

import java.awt.EventQueue;

import cn.zld.pdk.thread.EastPlayerThread;
import cn.zld.pdk.thread.NorthPlayerThread;
import cn.zld.pdk.thread.WestPlayerThread;
import cn.zld.pdk.ui.MainPlayUI;


/**
 * 程序入口
 *
 * @author 张立冬
 * @project 跑得快游戏开发 2010-9-3
 */
public class Main {

	public static void main(String args[]) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					MainPlayUI mui=new MainPlayUI();
					mui.start();
					EastPlayerThread et=new EastPlayerThread();
					et.start();
					NorthPlayerThread nt=new NorthPlayerThread();
					nt.start();
					WestPlayerThread wt=new WestPlayerThread();
					wt.start();
				}catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		});
	}

}
