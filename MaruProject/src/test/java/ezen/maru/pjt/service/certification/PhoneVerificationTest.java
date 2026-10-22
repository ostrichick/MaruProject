package ezen.maru.pjt.service.certification;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class PhoneVerificationTest {
  private static final String PHONE = "01012345678";
  private static final long NOW = 1000000L;

  @Test
  public void generatedCodeHasSixDigits() {
    for (int i = 0; i < 100; i++) {
      assertTrue(PhoneVerification.generateCode().matches("[0-9]{6}"));
    }
  }

  @Test
  public void mustVerifyCorrectCodeForSamePhoneBeforeExpiry() {
    PhoneVerification state = new PhoneVerification();
    state.recordSent(PHONE, "123456", NOW);
    assertFalse(state.isVerifiedPhone(PHONE, NOW));
    assertFalse(state.verify("01099999999", "123456", NOW));
    assertFalse(state.verify(PHONE, "000000", NOW));
    assertTrue(state.verify(PHONE, "123456", NOW));
    assertTrue(state.isVerifiedPhone(PHONE, NOW));
    assertFalse(state.isVerifiedPhone("01099999999", NOW));
    assertFalse(state.isVerifiedPhone(PHONE, NOW + 300001));
  }

  @Test
  public void expiresCodeAndLocksAfterFiveWrongGuesses() {
    PhoneVerification expired = new PhoneVerification();
    expired.recordSent(PHONE, "123456", NOW);
    assertFalse(expired.verify(PHONE, "123456", NOW + 300001));

    PhoneVerification locked = new PhoneVerification();
    locked.recordSent(PHONE, "123456", NOW);
    for (int i = 0; i < 5; i++) {
      assertFalse(locked.verify(PHONE, "000000", NOW));
    }
    assertFalse(locked.verify(PHONE, "123456", NOW));
  }

  @Test
  public void throttlesResendsAndInvalidatesPreviousVerification() {
    PhoneVerification state = new PhoneVerification();
    state.recordSent(PHONE, "123456", NOW);
    assertFalse(state.canSend(NOW + 59999));
    assertTrue(state.verify(PHONE, "123456", NOW));
    state.recordSent(PHONE, "654321", NOW + 60000);
    assertFalse(state.isVerifiedPhone(PHONE, NOW + 60000));
    for (int i = 2; i < 5; i++) {
      state.recordSent(PHONE, "654321", NOW + i * 60000);
    }
    assertFalse(state.canSend(NOW + 300000));
    assertTrue(state.canSend(NOW + 3600000));
  }
}
