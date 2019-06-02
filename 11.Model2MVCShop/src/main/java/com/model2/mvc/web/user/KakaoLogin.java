package com.model2.mvc.web.user;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.codehaus.jackson.JsonNode;
import org.codehaus.jackson.map.ObjectMapper;

import com.model2.mvc.service.domain.KakaoUser;

public class KakaoLogin {

		public static JsonNode getAccessToken(String autorize_code) {
			final String RequestUrl = "https://kauth.kakao.com/oauth/token";

			final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
			postParams.add(new BasicNameValuePair("grant_type", "authorization_code"));
			postParams.add(new BasicNameValuePair("client_id", "78fb0165a6ad931048b1bd9c873ef6fd")); // REST API KEY
			postParams.add(new BasicNameValuePair("redirect_uri", "http://localhost:8080/user/json/kakaologin")); // �����̷�Ʈ URI
			postParams.add(new BasicNameValuePair("code", autorize_code)); // �α��� ������ ���� code ��

			final HttpClient client = HttpClientBuilder.create().build();
			final HttpPost post = new HttpPost(RequestUrl);
			JsonNode returnNode = null;

			try {
				post.setEntity(new UrlEncodedFormEntity(postParams));
				final HttpResponse response = client.execute(post);
				final int responseCode = response.getStatusLine().getStatusCode();

				System.out.println("\nSending 'POST' request to URL : " + RequestUrl);
				System.out.println("Post parameters : " + postParams);
				System.out.println("Response Code : " + responseCode);

				// JSON ���� ��ȯ�� ó��
				ObjectMapper mapper = new ObjectMapper();
				returnNode = mapper.readTree(response.getEntity().getContent());

			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (ClientProtocolException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				// clear resources
			}

			return returnNode;

		}

		public static JsonNode getKakaoUserInfo(String autorize_code) {

			final String RequestUrl = "https://kapi.kakao.com/v1/user/me";

			final HttpClient client = HttpClientBuilder.create().build();
			final HttpPost post = new HttpPost(RequestUrl);

			// add header
			post.addHeader("Authorization", "Bearer " + autorize_code);

			JsonNode returnNode = null;

			try {
				final HttpResponse response = client.execute(post);
				final int responseCode = response.getStatusLine().getStatusCode();

				System.out.println("\nSending 'POST' request to URL : " + RequestUrl);
				System.out.println("Response Code : " + responseCode);

				// JSON ���� ��ȯ�� ó��
				ObjectMapper mapper = new ObjectMapper();
				returnNode = mapper.readTree(response.getEntity().getContent());

			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (ClientProtocolException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				// clear resources
			}
			return returnNode;

		}

		public static KakaoUser changeData(JsonNode userInfo) {
			KakaoUser vo = new KakaoUser();

			vo.setUser_snsId(userInfo.path("id").asText()); // id -> vo �ֱ�

			if (userInfo.path("kaccount_email_verified").asText().equals("true")) { // �̸��� �ޱ� ��� �� ���
				vo.setUser_email(userInfo.path("kaccount_email").asText()); // email -> vo �ֱ�

			} else { // �̸��� �ź� �� ��� �ڵ� ���� ����

			}

			JsonNode properties = userInfo.path("properties"); // �߰����� �޾ƿ���
			if (properties.has("nickname"))
				vo.setUser_name(properties.path("nickname").asText());
				vo.setUser_profileImagePath(properties.path("profile_image").asText());
			return vo;
		}
	}
	
