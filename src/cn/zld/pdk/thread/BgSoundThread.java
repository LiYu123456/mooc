package cn.zld.pdk.thread;

import java.applet.AudioClip;

public class BgSoundThread extends Thread{

	public void run(){
		final AudioClip bgsound = java.applet.Applet.newAudioClip(getClass()
				.getResource("/cn/zld/pdk/skin/poker/sound/bgsound.wav")); // ������������2
		bgsound.loop();
	}
}
