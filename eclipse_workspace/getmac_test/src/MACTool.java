
import java.io.BufferedReader;  
import java.io.IOException;  
import java.io.InputStreamReader;  
import java.net.InetAddress;  
import java.net.NetworkInterface;  
import java.net.UnknownHostException;

import javax.crypto.Mac;
  
/** 
 * @author CMF
 * @version 1.0.0 
 */  
public class MACTool {  
  
    /** 
     * 鑾峰彇褰撳墠鎿嶄綔绯荤粺鍚嶇О. return 鎿嶄綔绯荤粺鍚嶇О 渚嬪:windows xp,linux 绛� 
     */  
    public static String getOSName() {  
        return System.getProperty("os.name").toLowerCase();  
    }  
  
    /** 
     * 鑾峰彇unix缃戝崱鐨刴ac鍦板潃. 闈瀢indows鐨勭郴缁熼粯璁よ皟鐢ㄦ湰鏂规硶鑾峰彇. 
     * 濡傛灉鏈夌壒娈婄郴缁熻缁х画鎵╁厖鏂扮殑鍙杕ac鍦板潃鏂规硶. 
     *  
     * @return mac鍦板潃 
     */  
    public static String getUnixMACAddress() {  
        String mac = null;  
        BufferedReader bufferedReader = null;  
        Process process = null;  
        try {  
            // linux涓嬬殑鍛戒护锛屼竴鑸彇eth0浣滀负鏈湴涓荤綉鍗� 
            process = Runtime.getRuntime().exec("ifconfig eth0");  
            // 鏄剧ず淇℃伅涓寘鍚湁mac鍦板潃淇℃伅  
            bufferedReader = new BufferedReader(new InputStreamReader(  
                    process.getInputStream()));  
            String line = null;  
            int index = -1;  
            while ((line = bufferedReader.readLine()) != null) {  
                // 瀵绘壘鏍囩ず瀛楃涓瞇hwaddr]  
                index = line.toLowerCase().indexOf("hwaddr");  
                if (index >= 0) {// 鎵惧埌浜� 
                    // 鍙栧嚭mac鍦板潃骞跺幓闄�杈圭┖鏍� 
                    mac = line.substring(index + "hwaddr".length() + 1).trim();  
                    break;  
                }  
            }  
        } catch (IOException e) {  
            e.printStackTrace();  
        } finally {  
            try {  
                if (bufferedReader != null) {  
                    bufferedReader.close();  
                }  
            } catch (IOException e1) {  
                e1.printStackTrace();  
            }  
            bufferedReader = null;  
            process = null;  
        }  
        return mac;  
    }  
  
    /** 
     * 鑾峰彇widnows缃戝崱鐨刴ac鍦板潃. 
     *  
     * @return mac鍦板潃 
     */  
    public static String getWindowsMACAddress() {  
        String mac = null;  
        BufferedReader bufferedReader = null;  
        Process process = null;  
        try {  
            // windows涓嬬殑鍛戒护锛屾樉绀轰俊鎭腑鍖呭惈鏈塵ac鍦板潃淇℃伅  
            process = Runtime.getRuntime().exec("ipconfig /all");  
            bufferedReader = new BufferedReader(new InputStreamReader(  
                    process.getInputStream()));  
            String line = null;  
            int index = -1;  
            while ((line = bufferedReader.readLine()) != null) {   
                // 瀵绘壘鏍囩ず瀛楃涓瞇physical  
                index = line.toLowerCase().indexOf("physical address");  
                  
                if (index >= 0) {// 鎵惧埌浜� 
                    index = line.indexOf(":");// 瀵绘壘":"鐨勪綅缃� 
                    if (index >= 0) {  
                        // 鍙栧嚭mac鍦板潃骞跺幓闄�杈圭┖鏍� 
                        mac = line.substring(index + 1).trim();  
                    }  
                    break;  
                }  
            }  
        } catch (IOException e) {  
            e.printStackTrace();  
        } finally {  
            try {  
                if (bufferedReader != null) {  
                    bufferedReader.close();  
                }  
            } catch (IOException e1) {  
                e1.printStackTrace();  
            }  
            bufferedReader = null;  
            process = null;  
        }  
  
        return mac;  
    }  
  
    /** 
     * windows 7 涓撶敤 鑾峰彇MAC鍦板潃 
     *  
     * @return 
     * @throws Exception 
     */  
    public static String getMACAddress() throws Exception {  
          
        // 鑾峰彇鏈湴IP瀵硅薄  
        InetAddress ia = InetAddress.getLocalHost();  
        // 鑾峰緱缃戠粶鎺ュ彛瀵硅薄锛堝嵆缃戝崱锛夛紝骞跺緱鍒癿ac鍦板潃锛宮ac鍦板潃瀛樺湪浜庝竴涓猙yte鏁扮粍涓�  
        byte[] mac = NetworkInterface.getByInetAddress(ia).getHardwareAddress();  
  
        // 涓嬮潰浠ｇ爜鏄妸mac鍦板潃鎷艰鎴怱tring  
        StringBuffer sb = new StringBuffer();  
  
        for (int i = 0; i < mac.length; i++) {  
            if (i != 0) {  
                sb.append("-");  
            }  
            // mac[i] & 0xFF 鏄负浜嗘妸byte杞寲涓烘鏁存暟  
            String s = Integer.toHexString(mac[i] & 0xFF);  
            sb.append(s.length() == 1 ? 0 + s : s);  
        }  
  
        // 鎶婂瓧绗︿覆鎵�湁灏忓啓瀛楁瘝鏀逛负澶у啓鎴愪负姝ｈ鐨刴ac鍦板潃骞惰繑鍥� 
        return sb.toString().toUpperCase();  
    }  
  
    /** 
     * 娴嬭瘯鐢ㄧ殑main鏂规硶. 
     *  
     * @param argc 杩愯鍙傛暟. 
     * @throws Exception 
     */  
    public static void main(String[] argc) throws Exception { 
    	System.out.println("begin");
        String os = getOSName(); 
        String mac;
        if (os.equals("windows 7")) {  
            mac = getMACAddress();  
        } else if (os.startsWith("windows")) {  
            // 鏈湴鏄痺indows  
            mac = getWindowsMACAddress();  
        } else {  
            // 鏈湴鏄潪windows绯荤粺 涓�埇灏辨槸unix  
            mac = getUnixMACAddress();  
        }  
        System.out.println(mac);
    }  
    
    public static String getOSandMAC() throws Exception {  
        String os = getOSName(); 
        String mac = null;
        if (os.equals("windows 7")) {  
            mac = getMACAddress();  
        } else if (os.startsWith("windows")) {  
            mac = getWindowsMACAddress();     
        } else {   
            mac = getUnixMACAddress();  
            
        }  
        
        return "OS:"+os+"   MAC:"+mac+"  IP"+getIP()+"  Name:"+getName();
    }  
    
    
    public static String getIP(){
    	try {
			return InetAddress.getLocalHost().getHostAddress().toString();
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
    	return "";
    }
    
    public static String getName(){
    	try {
			return InetAddress.getLocalHost().getHostName().toString();
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
    	return "";
    }
}  