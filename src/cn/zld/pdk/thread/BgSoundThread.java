package cn.zld.pdk.thread;

import java.applet.AudioClip;

public class BgSoundThread extends Thread{

	public void run(){
		final AudioClip bgsound = java.applet.Applet.newAudioClip(getClass()
				.getResource("/cn/zld/pdk/skin/poker/sound/bgsound.wav")); // ÉùÒô¼ô¼­¶ÔÏó2
		bgsound.loop();
	}
}
