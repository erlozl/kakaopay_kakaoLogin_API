package com.example.kakao_test;

import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@JsonNaming(value = PropertyNamingStrategies.SnakeCaseStrategy.class)
public class KakaoProfile {

    private Long id;
    private String connected_at;
    private Properties properties;

    @Getter
    @Setter
    public static class Properties {
        private String nickname;
        private String profile_image;
        private String thumbnail_image;

    }

}

