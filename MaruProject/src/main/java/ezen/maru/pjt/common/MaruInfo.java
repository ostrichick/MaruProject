package ezen.maru.pjt.common;

import lombok.Getter;

public class MaruInfo {
  @Getter
  public static final String ADMIN_EMAIL = "maru.portfolio@gmail.com";
  public static final String ADMIN_PHONE = "01080106050";
  public static final String COOLSMS_APIKEY = System.getenv("COOLSMS_API_KEY");
  public static final String COOLSMS_APISECRET = System.getenv("COOLSMS_API_SECRET");
}
