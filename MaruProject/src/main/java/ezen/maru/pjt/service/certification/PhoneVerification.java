package ezen.maru.pjt.service.certification;

import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Locale;

/** Phone verification state held in the requesting browser's server session. */
public final class PhoneVerification implements Serializable {
  private static final long serialVersionUID = 1L;
  private static final SecureRandom RANDOM = new SecureRandom();
  private static final long CODE_LIFETIME_MS = 5 * 60 * 1000L;
  private static final long SEND_COOLDOWN_MS = 60 * 1000L;
  private static final long SEND_WINDOW_MS = 60 * 60 * 1000L;
  private static final int MAX_SENDS = 5;
  private static final int MAX_ATTEMPTS = 5;

  private String phone;
  private String code;
  private long expiresAt;
  private int failedAttempts;
  private boolean verified;
  private long windowStartedAt;
  private int sendsInWindow;
  private long lastSentAt = -SEND_COOLDOWN_MS;

  public static String generateCode() {
    return String.format(Locale.ROOT, "%06d", RANDOM.nextInt(1000000));
  }

  public synchronized boolean canSend(long now) {
    if (windowStartedAt == 0 || now < windowStartedAt || now - windowStartedAt >= SEND_WINDOW_MS) {
      windowStartedAt = now;
      sendsInWindow = 0;
    }
    return sendsInWindow < MAX_SENDS && now - lastSentAt >= SEND_COOLDOWN_MS;
  }

  public synchronized void clearChallenge() {
    phone = null;
    code = null;
    expiresAt = 0;
    failedAttempts = 0;
    verified = false;
  }

  public synchronized void recordSent(String targetPhone, String generatedCode, long now) {
    if (!canSend(now)) {
      throw new IllegalStateException("SMS send limit exceeded");
    }
    clearChallenge();
    phone = targetPhone;
    code = generatedCode;
    expiresAt = now + CODE_LIFETIME_MS;
    sendsInWindow++;
    lastSentAt = now;
  }

  public synchronized boolean verify(String targetPhone, String suppliedCode, long now) {
    if (code == null || targetPhone == null || !targetPhone.equals(phone)
        || suppliedCode == null || now > expiresAt || failedAttempts >= MAX_ATTEMPTS) {
      return false;
    }
    if (!MessageDigest.isEqual(code.getBytes(StandardCharsets.US_ASCII),
        suppliedCode.getBytes(StandardCharsets.US_ASCII))) {
      failedAttempts++;
      if (failedAttempts >= MAX_ATTEMPTS) {
        clearChallenge();
      }
      return false;
    }
    code = null;
    verified = true;
    return true;
  }

  public synchronized boolean isVerifiedPhone(String targetPhone, long now) {
    return verified && targetPhone != null && targetPhone.equals(phone) && now <= expiresAt;
  }
}
