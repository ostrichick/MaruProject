package ezen.maru.pjt.service.certification;

import org.junit.Test;

public class CertificationSMSServiceTest {
  @Test(expected = IllegalStateException.class)
  public void rejectsMissingCredentialsBeforeSending() {
    CertificationSMSService.requireCredentials(null, "secret");
  }

  @Test(expected = IllegalStateException.class)
  public void rejectsBlankCredentialsBeforeSending() {
    CertificationSMSService.requireCredentials("key", " ");
  }

  @Test
  public void acceptsConfiguredCredentials() {
    CertificationSMSService.requireCredentials("key", "secret");
  }
}
