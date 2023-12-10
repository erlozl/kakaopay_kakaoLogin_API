package com.example.kakao_test;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;


@RequestMapping("/user") // 대문달기
@Controller
public class KakaoController {

    // http://localhost:80/user/kakao-callback?code=암호화

    @GetMapping("/sign-in")
    public String signIn() {
        return "user/signIn";
    }

    @ResponseBody
    @GetMapping("/kakao-redirect")
    public String kakaoRedirect(String code) {
        System.out.println("메서드 동작 확인");

        RestTemplate r1 = new RestTemplate();
        HttpHeaders headers = new HttpHeaders();

        headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

        MultiValueMap<String, String> bodies = new LinkedMultiValueMap<>();
        bodies.add("grant_type","authorization_code");
        bodies.add("client_id",Define.MyKey);
        bodies.add("redirect_uri","http://localhost:8080/user/kakao-redirect");
        bodies.add("code",code);

        HttpEntity<MultiValueMap<String,String>> requestMsg = new HttpEntity<>(bodies,headers);
        ResponseEntity<OAuthToken> response = r1.exchange("https://kauth.kakao.com/oauth/token", HttpMethod.POST, requestMsg,OAuthToken.class);
        System.out.println("-----------------");
        System.out.println(response.getHeaders());
        System.out.println(response.getBody());
        System.out.println(response.getBody().getAccess_token());
        System.out.println("-----------------");
        // 여기까지 토큰 받기 위함 //


        RestTemplate r2 = new RestTemplate();
        HttpHeaders headers2 = new HttpHeaders();
        headers2.add("Authorization","Bearer " + response.getBody().getAccess_token());
        headers2.add("Content-type", "Content-type: application/x-www-form-urlencoded;charset=utf-8");

        // 헤더 바디 결합
        HttpEntity<MultiValueMap<String, String>> requestMsg2 = new HttpEntity<>(headers2);

        // 요청
        ResponseEntity<KakaoProfile> response2 = r2.exchange("https://kapi.kakao.com/v2/user/me", HttpMethod.POST, requestMsg2, KakaoProfile.class);
        System.out.println("---------------------");
        System.out.println(response2.getBody());
        System.out.println(response2.getBody().getProperties().getProfile_image());
        System.out.println(response2.getBody().getProperties().getNickname());
        System.out.println("-----카카오 서버 정보 받기 완료------");

        return null;
    }

    @ResponseBody
    @GetMapping("/kakaopay-redirect")
    public String kakaoPayRedirect(String code) {
        System.out.println("메서드 동작 확인");


//        결제 준비하기
        final String cid = "TC0ONETIME"; // 가맹점 테스트 코드
        RestTemplate rt = new RestTemplate();
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization","KakaoAK " + Define.ADMINKEY);
        headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

        // body 구성
        MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
        params.add("cid", cid);
        params.add("partner_order_id", "1001");
        params.add("partner_user_id", "skt");
        params.add("item_name", "apple");
        params.add("quantity", "1");
        params.add("green_deposit", "0");
        params.add("amount", "10000");
        params.add("total_amount", "10000");
        params.add("tax_free_amount", "10000");
        params.add("approval_url", "http://localhost:8080/payment/success"); // 성공 시 redirect url
        params.add("cancel_url", "http://localhost:8080/payment/cancel"); // 취소 시 redirect url
        params.add("fail_url", "http://localhost:8080/payment/fail"); // 실패 시 redirect url

        // 헤더 바디 결합
        HttpEntity<MultiValueMap<String, String>> requestMsg2 = new HttpEntity<>(params,headers);

        // 요청
        ResponseEntity<KakaoReady> response2 = rt.exchange("https://kapi.kakao.com/v1/payment/ready", HttpMethod.POST, requestMsg2, KakaoReady.class);
        System.out.println("---------------------");
        System.out.println(response2.getBody());
        System.out.println("-----카카오 서버 정보 받기 완료------");

        return null;
    }

    @GetMapping("/kakaopay")
    public String kakaoPayForm() {
        return "user/kakaoPay";
    }

    @PostMapping("/kakaoPay")
    public String kakaoPay() {
        System.out.println("메서드 동작 확인");


//        결제 준비하기
        final String cid = "TC0ONETIME"; // 가맹점 테스트 코드
        RestTemplate rt = new RestTemplate();
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization","KakaoAK " + Define.ADMINKEY);
        headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

        // body 구성
        MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
        params.add("cid", cid);
        params.add("partner_order_id", "1001");
        params.add("partner_user_id", "skt");
        params.add("item_name", "apple");
        params.add("quantity", "1");
        params.add("green_deposit", "0");
        params.add("amount", "10000");
        params.add("total_amount", "10000");
        params.add("tax_free_amount", "10000");
        params.add("approval_url", "http://localhost:8080/payment/success"); // 성공 시 redirect url
        params.add("cancel_url", "http://localhost:8080/payment/cancel"); // 취소 시 redirect url
        params.add("fail_url", "http://localhost:8080/payment/fail"); // 실패 시 redirect url

        // 헤더 바디 결합
        HttpEntity<MultiValueMap<String, String>> requestMsg2 = new HttpEntity<>(params,headers);

        // 요청
        ResponseEntity<KakaoReady> response2 = rt.exchange("https://kapi.kakao.com/v1/payment/ready", HttpMethod.POST, requestMsg2, KakaoReady.class);
        System.out.println("---------------------");
        System.out.println(response2.getBody());
        System.out.println("-----카카오 서버 정보 받기 완료------");

//        ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ준비

        // body 구성
        MultiValueMap<String, String> params2 = new LinkedMultiValueMap<>();
        params.add("cid", cid);
        params.add("partner_order_id", "1001");
        params.add("partner_user_id", "skt");
        params.add("item_name", "apple");
        params.add("quantity", "1");
        params.add("green_deposit", "0");
        params.add("amount", "10000");
        params.add("total_amount", "10000");
        params.add("tax_free_amount", "10000");
        params.add("approval_url", "http://localhost:8080/payment/success"); // 성공 시 redirect url
        params.add("cancel_url", "http://localhost:8080/payment/cancel"); // 취소 시 redirect url
        params.add("fail_url", "http://localhost:8080/payment/fail"); // 실패 시 redirect url

        return "user/main";
    }

    @ResponseBody
    @GetMapping("/payment/success")
    public String paymentSuccess() {
        return "성공";
    }

    @ResponseBody
    @GetMapping("/payment/cancel")
    public String paymentCancel() {
        return "취소";
    }

    @ResponseBody
    @GetMapping("/payment/fail")
    public String paymentFail() {
        return "실패";
    }
    
}
