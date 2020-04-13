# auth Module
 This module constructs the <mastodon-instance-application> record which
 serves as a representation of a Mastodon account, holding the credentials
 which are made use of to authenticate with an instance's API (when said
 authentication is needed, as not all endpoints require authentication).



<br />

## masto-app-set-token-via-code!
#### Summary
#f
#### Parameters
> `mastoApp` _required_ <br />
> `code` _required_ <br />
> `redirect` _required_ <br />

<br />

## masto-app-secret
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-app-set-token-via-client-cred!
#### Summary
#f
#### Parameters
> `mastoApp` _required_ <br />
> `scopes` _required_ <br />

<br />

## masto-app-domain
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-app-authorize-uri
#### Summary
Generates the URL to supply the user in order to display an authorization
form to zem.

If no redirect URI is specified (via the `redirect` argument), the first of the
specified redirect URIs stored in the app. record (`mastoApp`) will be used.

`scopes`, likewise, will default to the values stored in the app. record if no
scopes are provided to the argument `scopes` for this function.

`force` will default to `false` if no value is specified.

Original Mastodon documentation of the HTTP call used for this process can be
found [here, under the "Authorize a user" section](https://docs.joinmastodon.org/methods/apps/oauth/).
#### Parameters
> `mastoApp` _required_ <br />
> `#:redirect` _keyword_ (argument position 2) <br />
> `#:scopes` _keyword_ (argument position 3) <br />
> `#:force` _keyword_ (argument position 4) <br />

<br />

## masto-app-instantiate
#### Summary
Instantiate an application record for use with authentication.

Only an instance domain is required; if no client ID, secret, or key are
provided, a client is registered at the specified instance; to avoid registering
a new client and use an existing one, all three must be provided.

`name`, `redirects`, and `scopes` default to – respectively – `"Elefan"`,
`'("urn:ietf:wg:oauth:2.0:oob")`, and `'("read")`, if not provided for.

Original Mastodon documentation of the HTTP call used for this process can be
found [here, under the "Create an application" section](https://docs.joinmastodon.org/methods/apps/).

To learn more about scopes, visit [here](https://docs.joinmastodon.org/api/oauth-scopes/).
#### Parameters
> `domain` _required_ <br />
> `#:website` _keyword_ (argument position 2) <br />
> `#:id` _keyword_ (argument position 3) <br />
> `#:secret` _keyword_ (argument position 4) <br />
> `#:key` _keyword_ (argument position 5) <br />
> `#:name` _keyword_ (argument position 6) <br />
> `#:redirects` _keyword_ (argument position 7) <br />
> `#:scopes` _keyword_ (argument position 8) <br />

<br />

## masto-app-redirects
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-app-set-token-via-user-cred!
#### Summary
#f
#### Parameters
> `mastoApp` _required_ <br />
> `username` _required_ <br />
> `password` _required_ <br />
> `scopes` _required_ <br />

<br />

## masto-app-website
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-app-scopes
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-instance-app?
#### Summary
#f
#### Parameters
> `obj` _required_ <br />

<br />

## masto-app-key
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-app-verify-cred
#### Summary
Confirm that the app's OAuth2 credentials stored in the record work.

Original Mastodon documentation of the HTTP call used for this process can be
found [here, under the "Verify your app works" section](https://docs.joinmastodon.org/methods/apps/).
#### Parameters
> `mastoApp` _required_ <br />

<br />

## masto-app-name
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-app-id
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-app-token
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## <mastodon-instance-application>
#### Summary
A record object that can be returned by an API call.
#### Record Fields
> `domain` <br />
> `name` <br />
> `website` <br />
> `redirects` <br />
> `id` <br />
> `secret` <br />
> `key` <br />
> `scopes` <br />
> `token` <br />

<br />
