/* Java 1.8 샘플 코드 */
package shell;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import java.io.IOException;

public class CentralLibBook {
	

	public static void main(String[] args) throws IOException {
		
	
		StringBuilder urlBuilder = new StringBuilder("https://www.nl.go.kr/NL/search/openApi/search.do"); /*URL*/
		urlBuilder.append("?key=" +  URLEncoder.encode("e8ed73f33e8967e2b58cf07e0f3b9be1019e3b865500f8b532824e63949ecdc2","UTF-8") ); /*인증키 (sample사용시에는 호출시 제한됩니다.)*/
		urlBuilder.append("&kwd=" +  URLEncoder.encode("토지","UTF-8") ); /*요청파일타입 (xml,xmlf,xls,json) */
		
		
		// 상위 5개는 필수적으로 순서바꾸지 않고 호출해야 합니다.
		
		
		URL url = new URL(urlBuilder.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode()); /* 연결 자체에 대한 확인이 필요하므로 추가합니다.*/
		BufferedReader rd;

		// 서비스코드가 정상이면 200~300사이의 숫자가 나옵니다.
		if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
				rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
				rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
				sb.append(line);
		}
		rd.close();
		conn.disconnect();
		System.out.println(sb.toString());
	}
}