# Authgear sample for Flutter

This repo demonstrates how to add authentication into a Flutter app using Authgear.

## Project setup

Clone this, update the configuration then run `flutter run` from the project's root directory 

### Configuration

The project needs to be configured with your Authgear app's Endpoint and client ID in order for the authentication flow to work.

To do this, in `lib/main.dart`, replace `"<ClIENT_ID>"`, `"<AUTHGEAR_ENDPOINT>"` with with your own Authgear application credentials.


## What is Authgear?

[Authgear](https://www.authgear.com/) is a highly adaptable identity-as-a-service (IDaaS) platform for web and mobile applications.
Authgear makes user authentication easier and faster to implement by integrating it into various types of applications - from single-page web apps to mobile applications to API services.

### Key Features

- Zero trust authentication architecture with [OpenID Connect](https://openid.net/developers/how-connect-works/) (OIDC) standard.
- Easy-to-use interfaces for user registration and login, including email, phone, username as login ID, and password, OTP, magic links, etc for authentication.
- Support a wide range of identity providers, such as [Google](https://developers.google.com/identity), [Apple](https://support.apple.com/en-gb/guide/deployment/depa64848f3a/web), and [Azure Active Directory](https://azure.microsoft.com/en-gb/products/active-directory/) (AD).
- Support biometric login on mobile, Passkeys, and Multi-Factor Authentication (MFA) such as SMS/email-based verification and authenticator apps with TOTP.

## Documentation

View other Authgear Documentation at [https://docs.authgear.com/](https://docs.authgear.com/)
