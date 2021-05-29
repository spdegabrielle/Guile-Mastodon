# Elefan
A client library implementing the full v1 REST API protocol for Mastodon, in Guile.

## Installation
I should make up a Makefile or add this to (Guix)[https://guix.gnu.org/], at some point, but, for now, you'll just have to handle this manually, I'm afraid.

This is a super simple and plain set of modules so you can just simply copy the `elefan` directory to `/usr/share/guile/<version>/` or wherever your setup of Guile loads modules.

Then, you can just load the specific modules you want to make use of.

## Usage
### Modules
I've attempted to break out the various functions into sections to make it easier to use and load exactly what you want so modules are broken out around subject.

So you don't have to manually load multiple modules, each module `#:re-export`s the elements that might be used in conjunction with the subject.

For example, the API's JSON `status` objects have an `account` property which holds the JSON `account` object representation of whomever made the account. As such, `(elefan statuses)` `#:re-export`s all the functions and records related to Masto accounts so you don't have to remember to `use` the necessary additional module, if you decide you want to do anything with that property.

The available modules are (with links to their documentation):

* (`(elefan auth)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/auth.md]
* (`(elefan accounts)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/accounts.md]
* (`(elefan blocks)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/blocks.md]
* (`(elefan domain-blocks)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/domain-blocks.md]
* (`(elefan emojis)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/emojis.md]
* (`(elefan endorsements)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/endorsements.md]
* (`(elefan favorites)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/favorites.md]
* (`(elefan filters)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/filters.md]
* (`(elefan follow-requests)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/follow-requests.md]
* (`(elefan follow-suggestions)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/follow-suggestions.md]
* (`(elefan instances)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/instances.md]
* (`(elefan lists)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/lists.md]
* (`(elefan media-attachments)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/media-attachments.md]
* (`(elefan mutes)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/mutes.md]
* (`(elefan notifications)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/notifications.md]
* (`(elefan polls)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/polls.md]
* (`(elefan reports)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/reports.md]
* (`(elefan scheduled-statuses)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/scheduled-statuses.md]
* (`(elefan search)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/search.md]
* (`(elefan statuses)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/statuses.md]
* (`(elefan timelines)`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/timelines.md]

### Simple Example
Unless using an API endpoint which doesn't require some level of authorization (e.g. (`masto-emojis-on-instance`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/emojis.md#masto-emojis-on-instance]), you will need to initialize an app. for a particular instance with (`masto-app-instantiate`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/auth.md#masto-app-instantiate].

These functions live in the `(elefan auth)` module so make sure to include in your file

```Scheme
(use-modules (elefan auth))
```

To generate a new client for the instance you want to authorize with, simply run

```Scheme
(masto-app-instantiate "https://mastodon.social")
```

(or with the instance URL you'd prefer).

This will default to using a (scope)[https://docs.joinmastodon.org/api/oauth-scopes/] of `read` unless you specify otherwise.

For example, you could specify more than just `read` like

```Scheme
(masto-app-instantiate "https://mastodon.social" #:scopes '("read" "write" "follow" "push"))
```

This will, then, generate a client for you on mastodon.social.

If you've already created a client on an instance, you can pass along `#:id`, `#:secret`, and `#:key` to reuse your client.

While that generates your (`<mastodon-instance-application>`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/auth.md#mastodon-instance-application] record, calling (`masto-app-token`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/auth.md#masto-app-token] on it will result in `#f` since we haven't gotten a token – with it –, yet.

This can be accomplished via three different functions:

* (`masto-app-set-token-via-client-cred!`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/auth.md#masto-app-set-token-via-client-cred]
* (`masto-app-set-token-via-code!`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/auth.md#masto-app-set-token-via-code]
* (`masto-app-set-token-via-user-cred!`)[https://codeberg.org/WammKD/Guile-Mastodon/src/branch/master/docs/auth.md#masto-app-set-token-via-user-cred]

If you're, for example, just going to authorize with user credentials, you could just do

```Scheme
(masto-app-set-token-via-user-cred! instantiatedApp "E-mail" "password")
```

This will return the app. you gave it but, also, `set!` the token on the app. so you don't _have_ to save the result, if you don't want to.

And that's it.

You can then use that app. to pass it to any other functions which require authorization. For example, you could check out all of the conversations of the user by simply doing

```Scheme
(masto-conversations-all instantiatedAppWithToken)
```
