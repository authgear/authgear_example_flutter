# Authgear sample for Flutter

This repo demonstrates how to add user authentication to a Flutter app using Authgear.

## Project setup

### Create Free Authgear Account
1. Goto [https://portal.authgear.com](https://portal.authgear.com) and create a free account (or login to your existing account).

2. Then navigate to Applications and create a new client application of type Native App.

### Configuration

Clone the repo, update the configuration then run `flutter run` from the project's root directory. 

The project needs to be configured with your Authgear client application's **Endpoint** and **Client ID** in order for the authentication flow to work.

To do this, open `lib/constants.dart`, and replace `"<CLIENT_ID>"`, `"<AUTHGEAR_ENDPOINT>"` with with your own Authgear application credentials.

To run this example app, add the following URI to your Authgear client application's Authorized Redirect URI:

- `com.example.authgeardemo.flutter://host/path`

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
