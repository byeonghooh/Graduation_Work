
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.*;
import com.google.gson.JsonObject;

public class Example {

	static public void main ( String[] args ) {

		//		JsonObject data = new JsonObject();

		JsonParser jsonParser = new JsonParser();


		String openApiURL = "http://aiopen.etri.re.kr:8000/MRCServlet";
		String accessKey = "6a9b2087-4894-4465-993c-9e16956df7d1";    // 諛쒓툒諛쏆�� API Key

		//      EUC-KR로 바꾼 후 사용할 것 
		/*
		 * String passage =
		 * "루트비히 판 베토벤(독일어: Ludwig van Beethoven, 1770년 12월 17일 ~ 1827년 3월 26일)은 " +
		 * "독일의 서양 고전 음악 작곡가이다. 독일의 본에서 태어났으며, 성인이 된 이후 거의 오스트리아 빈에서 살았다. 감기와 폐렴으로 인한 합병증으로 투병하다가 "
		 * +
		 * "57세로 생을 마친 그는 고전주의와 낭만주의의 전환기에 활동한 주요 음악가이며, 작곡가로 널리 존경받고 있다. 음악의 성인(聖人) 또는 악성(樂聖)이라는 "
		 * +
		 * "별칭으로 부르기도 한다. 가장 잘 알려진 작품 가운데에는 〈교향곡 5번〉, 〈교향곡 6번〉, 〈교향곡 9번〉, 〈비창 소나타〉, 〈월광 소나타〉 등이 있다."
		 * ; // 遺꾩꽍�븷 臾몃떒 �뜲�씠�꽣
		 */		//      String question = "베토벤이 죽은 이유는 뭐야?";          // 吏덈Ц �뜲�씠�꽣

		String passage = "블록체인(영어: block chain, blockchain)은  '블록'이라고 하는 소규모 데이터들이 P2P 방식을 기반으로"
				+ "생성된 체인 형태의 연결고리 기반 분산 데이터 저장환경에 저장되어 누구라도 임의로 수정할 수 없고"
				+ " 누구나 변경의 결과를 열람할 수 있는 분산 컴퓨팅 기술 기반의 데이터 대변 방지 기술이다."
				+ "이는 근본적으로 분산 데이터 저장기술의 한 형태로, 지속적으로 변경되는 데이터를 모든 참여 노드에 기록한 변경 리스트로서 "
				+ "분산 노드의 운영자에 의한 임의 조작이 불가능하도록 고안되었다. 블록체인 기술은 비트코인을 비롯한 대부분의 암호화폐 거래에 사용된다."
				+ "암호화폐의 거래과정은 탈중앙화된 전자장부에 쓰이기 때문에 블록체인 소프트웨어를 실행하는 많은 사용자들의 각 컴퓨터에서 서버가 "
				+ "운영되어 중앙은행 없이 개인 간의 자유로운 거래가 가능하다."
				+ " 가장 잘 알려진 블록체인 기술에는 P2P 대출, 거래인증, 공인인증 등이 있다."; 
		//				+ "블록체인의 활용분야에는 가상화폐에서 시작해 P2P 대출, 거래인증, 공인인증 등 최근 핀테크 기술과 융합해 다양한 분야에서 쓰이고 있다.";            // 遺꾩꽍�븷 臾몃떒 �뜲�씠�꽣


		String question1= "블록체인이 뭐야?";          // 정의 ( 중간 이상한 데이터 값 - 형태소 잘못 인식하는 경향이 있음)
		String question2 = "블록체인의 기반기술 / 방식?";          // 블록체인의 기반기술 또는 방식 
		String question3 = "블록체인기술 활용사례?";          // 블록체인이 전반적으로 사용되는 곳 (기술까지 포함되어야 함.) 
		String question4 = "블록체인 활용분야에는 무엇이 있어?";          // 뮤염

		String Result1 = "";
		String Result2 = "";
		String Result3 = "";
		String Result4 = "";

		Gson gson = new Gson();

		Map<String, Object> request = new HashMap<>();
		Map<String, String> argument = new HashMap<>();


		for(int i = 0; i < 4; i++) { // variable "number of n" times
			if(i == 0) {

				argument.put("question", question1); // 질문
				argument.put("passage", passage); //

				request.put("access_key", accessKey);
				request.put("argument", argument);

				URL url;
				Integer responseCode = null;
				String responBody = null;
				try {
					url = new URL(openApiURL);
					HttpURLConnection con = (HttpURLConnection)url.openConnection();
					con.setRequestMethod("POST");
					con.setDoOutput(true);

					DataOutputStream wr = new DataOutputStream(con.getOutputStream());
					wr.write(gson.toJson(request).getBytes("UTF-8"));
					wr.flush();
					wr.close();

					responseCode = con.getResponseCode();
					InputStream is = con.getInputStream();
					byte[] buffer = new byte[is.available()];
					int byteRead = is.read(buffer);
					responBody = new String(buffer);

					System.out.println("[responseCode] " + responseCode);
					System.out.println("[responBody]");
					System.out.println(responBody);

					JsonObject jsonObject = (JsonObject) jsonParser.parse(responBody);

					//Debugging
					//					System.out.println("answer4 : " + jsonObject.get("return_object"));

					String Raw_Data_Answer1 = jsonObject.get("return_object").toString();

					int Answer1_Last_Idx = 0;
					int Answer1_First_Idx = 0;

					if(Raw_Data_Answer1.contains("answer")) {

						Answer1_Last_Idx	= Raw_Data_Answer1.indexOf("confidence");
						Answer1_First_Idx = Raw_Data_Answer1.indexOf("answer");
						Result1 = Raw_Data_Answer1.substring(Answer1_First_Idx+9, Answer1_Last_Idx-3);
						System.out.println("Answer1 Final result : " + Result1);
					}

				} catch (MalformedURLException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

			if(i == 1) {

				argument.put("question", question2);
				argument.put("passage", passage);

				request.put("access_key", accessKey);
				request.put("argument", argument);

				URL url;
				Integer responseCode = null;
				String responBody = null;
				try {
					url = new URL(openApiURL);
					HttpURLConnection con = (HttpURLConnection)url.openConnection();
					con.setRequestMethod("POST");
					con.setDoOutput(true);

					DataOutputStream wr = new DataOutputStream(con.getOutputStream());
					wr.write(gson.toJson(request).getBytes("UTF-8"));
					wr.flush();
					wr.close();

					responseCode = con.getResponseCode();
					InputStream is = con.getInputStream();
					byte[] buffer = new byte[is.available()];
					int byteRead = is.read(buffer);
					responBody = new String(buffer);

					System.out.println("[responseCode] " + responseCode);
					System.out.println("[responBody]");
					System.out.println(responBody);

					JsonObject jsonObject = (JsonObject) jsonParser.parse(responBody);

					//Debugging
					//					System.out.println("answer4 : " + jsonObject.get("return_object"));

					String Raw_Data_Answer2 = jsonObject.get("return_object").toString();

					int Answer2_Last_Idx = 0;
					int Answer2_First_Idx = 0;

					if(Raw_Data_Answer2.contains("answer")) {

						Answer2_Last_Idx	= Raw_Data_Answer2.indexOf("confidence");
						Answer2_First_Idx = Raw_Data_Answer2.indexOf("answer");
						Result2 = Raw_Data_Answer2.substring(Answer2_First_Idx+9, Answer2_Last_Idx-3);
						System.out.println("Answer2 Final result : " + Result2);
					}

				} catch (MalformedURLException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}


			if(i == 2) {

				argument.put("question", question3);
				argument.put("passage", passage);

				request.put("access_key", accessKey);
				request.put("argument", argument);

				URL url;
				Integer responseCode = null;
				String responBody = null;
				try {
					url = new URL(openApiURL);
					HttpURLConnection con = (HttpURLConnection)url.openConnection();
					con.setRequestMethod("POST");
					con.setDoOutput(true);

					DataOutputStream wr = new DataOutputStream(con.getOutputStream());
					wr.write(gson.toJson(request).getBytes("UTF-8"));
					wr.flush();
					wr.close();

					responseCode = con.getResponseCode();
					InputStream is = con.getInputStream();
					byte[] buffer = new byte[is.available()];
					int byteRead = is.read(buffer);
					responBody = new String(buffer);

					System.out.println("[responseCode] " + responseCode);
					System.out.println("[responBody]");
					System.out.println(responBody);

					JsonObject jsonObject = (JsonObject) jsonParser.parse(responBody);

					//Debugging
					//					System.out.println("answer4 : " + jsonObject.get("return_object"));

					String Raw_Data_Answer3 = jsonObject.get("return_object").toString();

					int Answer3_Last_Idx = 0;
					int Answer3_First_Idx = 0;

					if(Raw_Data_Answer3.contains("answer")) {

						Answer3_Last_Idx	= Raw_Data_Answer3.indexOf("confidence");
						Answer3_First_Idx = Raw_Data_Answer3.indexOf("answer");
						Result3 = Raw_Data_Answer3.substring(Answer3_First_Idx+9, Answer3_Last_Idx-3);
						System.out.println("Answer3 Final result : " + Result3);
					}

				} catch (MalformedURLException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

			if(i == 3) {

				argument.put("question", question4); // 질문
				argument.put("passage", passage); //

				request.put("access_key", accessKey);
				request.put("argument", argument);

				URL url;
				Integer responseCode = null;
				String responBody = null;
				try {
					url = new URL(openApiURL);
					HttpURLConnection con = (HttpURLConnection)url.openConnection();
					con.setRequestMethod("POST");
					con.setDoOutput(true);

					DataOutputStream wr = new DataOutputStream(con.getOutputStream());
					wr.write(gson.toJson(request).getBytes("UTF-8"));
					wr.flush();
					wr.close();

					responseCode = con.getResponseCode();
					InputStream is = con.getInputStream();
					byte[] buffer = new byte[is.available()];
					int byteRead = is.read(buffer);
					responBody = new String(buffer);

					System.out.println("[responseCode] " + responseCode);
					System.out.println("[responBody]");
					System.out.println(responBody);

					JsonObject jsonObject = (JsonObject) jsonParser.parse(responBody);

					//Debugging
					//					System.out.println("answer4 : " + jsonObject.get("return_object"));

					String Raw_Data_Answer4 = jsonObject.get("return_object").toString();

					int Answer4_Last_Idx = 0;
					int Answer4_First_Idx = 0;

					if(Raw_Data_Answer4.contains("answer")) {

						Answer4_Last_Idx	= Raw_Data_Answer4.indexOf("confidence");
						Answer4_First_Idx = Raw_Data_Answer4.indexOf("answer");
						Result4 = Raw_Data_Answer4.substring(Answer4_First_Idx+9, Answer4_Last_Idx-3);
						System.out.println("Answer4 Final result : " + Result4);
					}

					//					data.get(responBody);
					//					System.out.println(data);
					//					System.out.println(data.get(responBody));

				} catch (MalformedURLException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}

			}

		}

		System.out.println("");
		System.out.println("");
		System.out.println("----------------Result--------------------------------");
		System.out.println(Result1);
		System.out.println(Result2);
		System.out.println(Result3);
		System.out.println(Result4);



	}
}
