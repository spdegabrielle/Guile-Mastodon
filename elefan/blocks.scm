(define-module (elefan blocks)
  #:use-module (elefan auth)
  #:use-module (elefan entities)
  #:use-module (elefan utils)
  #:export (masto-blocks-all
            masto-block-account
            masto-unblock-account)
  #:re-export (<mastodon-pagination-object> masto-page? masto-page-objects
                                                        masto-page-prev
                                                        masto-page-next
               <mastodon-emoji>   masto-emoji?   masto-emoji-shortcode
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
                                                 masto-account-fields
               <mastodon-relationship> masto-relationship? masto-relationship-id
                                                           masto-relationship-following
                                                           masto-relationship-followed-by
                                                           masto-relationship-blocking
                                                           masto-relationship-muting
                                                           masto-relationship-muting-notifications
                                                           masto-relationship-requested
                                                           masto-relationship-domain-blocking
                                                           masto-relationship-showing-reblogs
                                                           masto-relationship-endorsed))

(define* (masto-blocks-all mastoApp #:optional [limit 40])
  "Retrieve all blocks associated with the user tied to `mastoApp`.

If no `limit` value is provided, the value 40 is used.

A <mastodon-pagination-object> is returned,
consisting of the <mastodon-account>s that the user
has blocked.

Find the original documentation [here](https://docs.joinmastodon.org/methods/accounts/blocks/)."
  (generate-masto-page
    mastoApp
    'get
    (string-append (masto-app-domain mastoApp) "/api/v1/blocks"
                   "?limit="                   (number->string limit))
    generate-masto-account-array))

(define (masto-block-account mastoApp accountID)
  "Block an existing Fediverse account for the user tied to `mastoApp`.

`accountID` refers to the ID of the user you wish to block.

A <mastodon-relationship> is returned.

Find the original documentation within [this page](https://docs.joinmastodon.org/methods/accounts/)."
  (generate-masto-relationship
    (http 'post
      (string-append (masto-app-domain mastoApp) "/api/v1/accounts/"
                     accountID                   "/block")
      #:token (masto-app-token mastoApp))))

(define (masto-unblock-account mastoApp accountID)
  "Unblock an existing Fediverse account for the user tied to `mastoApp`.

`accountID` refers to the ID of the user you wish to unblock.

A <mastodon-relationship> is returned.

Find the original documentation within [this page](https://docs.joinmastodon.org/methods/accounts/)."
  (generate-masto-relationship
    (http 'post
      (string-append (masto-app-domain mastoApp) "/api/v1/accounts/"
                     accountID                   "/unblock")
      #:token (masto-app-token mastoApp))))
