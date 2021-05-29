(define-module (elefan accounts)
  #:use-module (elefan auth)
  #:use-module (elefan entities)
  #:use-module (elefan utils)
  #:use-module (ice-9 receive)
  #:use-module (json)
  #:use-module (rnrs bytevectors)
  #:use-module (web client)
  #:export (masto-accounts-token masto-account-create masto-account-verify-creds)
  #:re-export (<mastodon-emoji>   masto-emoji?   masto-emoji-shortcode
                                                 masto-emoji-static-url
                                                 masto-emoji-url
                                                 masto-emoji-visible-in-picker?
               <mastodon-field>   masto-field?   masto-field-name
                                                 masto-field-value
                                                 masto-field-verified-at
               <mastodon-account> masto-account? masto-account-id
                                                 masto-account-username
                                                 masto-account-acct
                                                 masto-account-display-name
                                                 masto-account-locked?
                                                 masto-account-bot?
                                                 masto-account-discoverable?
                                                 masto-account-group?
                                                 masto-account-created-at
                                                 masto-account-followers-count
                                                 masto-account-following-count
                                                 masto-account-statuses-count
                                                 masto-account-last-status-at
                                                 masto-account-note
                                                 masto-account-url
                                                 masto-account-avatar
                                                 masto-account-avatar-static
                                                 masto-account-header
                                                 masto-account-header-static
                                                 masto-account-emojis
                                                 masto-account-moved
                                                 masto-account-fields))

(define (masto-accounts-token mastoApp eMail username password locale)
  (receive (header body)
      (http-post
        (string-append (masto-app-domain mastoApp) "/api/v1/accounts"
                       (assemble-params `(("username"  ,username)
                                          ("email"     ,eMail)
                                          ("password"  ,password)
                                          ("agreement" "true")
                                          ("locale"    ))))
        #:headers `((Authorization . ,(string-append
                                        "Bearer "
                                        (masto-app-token mastoApp)))))
    (reverse (json-string->scm (utf8->string body)))))

(define* (masto-account-create mastoApp username  email
                               password agreement locale #:optional reason)
  "Creates a user and account records.

The app should save this token for later and should wait for the user to confirm
their account by clicking a link in their E-mail inbox.

`agreement` is whether the user agrees to the local rules, terms, and policies.
These should be presented to the user in order to allow them to consent before
setting this parameter to TRUE.

`reason` is text that will be reviewed by moderators, if registrations require
manual approval.

An account access token for the app that initiated the request is returned.

Find the original documentation within [this page](https://docs.joinmastodon.org/methods/accounts/)."
  ;; (generate-masto-relationship
    (http 'post
      (string-append (masto-app-domain mastoApp) "/api/v1/accounts")
      #:token       (masto-app-token mastoApp)
      #:queryParams (append
                      `(("username"  ,username)
                        ("email"     ,email)
                        ("password"  ,password)
                        ("agreement" ,agreement)
                        ("locale"    ,locale))
                      (if reason `(("reason" ,reason)) '())))#| ) |#)

(define (masto-account-verify-creds mastoApp)
  "Test to make sure that the user token works for the user tied to `mastoApp`.

A <mastodon-account> of the user, with `source`, is returned.

Find the original documentation within [this page](https://docs.joinmastodon.org/methods/accounts/)."
  (generate-masto-account
    (http 'get (string-append
                 (masto-app-domain mastoApp)
                 "/api/v1/accounts/verify_credentials") #:token (masto-app-token
                                                                  mastoApp))))

;; (define* (masto-account-update-creds mastoApp)
;;   "Update the display and preferences for the user tied to `mastoApp`.

;; A <mastodon-account> of the user, with `source`, is returned.

;; Find the original documentation within [this page](https://docs.joinmastodon.org/methods/accounts/)."
;;   (generate-masto-account
;;     (http 'patch
;;       (string-append
;;         (masto-app-domain mastoApp)
;;         "/api/v1/accounts/update_credentials")
;;       #:token       (masto-app-token mastoApp)
;;       #:queryParams s)))
