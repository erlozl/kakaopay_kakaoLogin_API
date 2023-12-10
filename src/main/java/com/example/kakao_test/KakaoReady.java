package com.example.kakao_test;

import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Data;
import lombok.ToString;

/**
 *
 * 결제 요청 시 카카오에게 받음
 */
@JsonNaming(value = PropertyNamingStrategies.SnakeCaseStrategy.class)
@Data
public class KakaoReady {

    private String tid; // 결제 고유 번호
    private String next_redirect_mobile_url;
    private String next_redirect_pc_url;
    private String android_app_scheme;
    private String ios_app_scheme;
    private String created_at;
}
