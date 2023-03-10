(define-module (elefan mutes)
  #:use-module (elefan auth)
  #:use-module (elefan entities)
  #:use-module (elefan utils)
  #:export (masto-mutes-all      masto-mute-account
            masto-unmute-account masto-mute-status  masto-unmute-status)
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
                                                           masto-relationship-endorsed
               <mastodon-meta-subtree> masto-meta-subtree? masto-meta-subtree-width
                                                           masto-meta-subtree-height
                                                           masto-meta-subtree-size
                                                           masto-meta-subtree-aspect
                                                           masto-meta-subtree-frame-rate
                                                           masto-meta-subtree-duration
                                                           masto-meta-subtree-bitrate
               <mastodon-meta-focus>   masto-meta-focus?   masto-meta-focus-x
                                                           masto-meta-focus-y
               <mastodon-meta>         masto-meta?         masto-meta-small
                                                           masto-meta-original
                                                           masto-meta-focus
               <mastodon-attachment>   masto-attachment?   masto-attachment-id
                                                           masto-attachment-type
                                                           masto-attachment-url
                                                           masto-attachment-remote-url
                                                           masto-attachment-preview-url
                                                           masto-attachment-text-url
                                                           masto-attachment-meta
                                                           masto-attachment-description
                                                           masto-attachment-blurhash
               <mastodon-mention> masto-mention? masto-mention-url
                                                 masto-mention-username
                                                 masto-mention-acct
                                                 masto-mention-id
               <mastodon-history> masto-history? masto-history-day
                                                 masto-history-uses
                                                 masto-history-accounts
               <mastodon-tag>     masto-tag?     masto-tag-name
                                                 masto-tag-url
                                                 masto-tag-history
               <mastodon-card>    masto-card?    masto-card-url
                                                 masto-card-title
                                                 masto-card-description
                                                 masto-card-image
                                                 masto-card-type
                                                 masto-card-author-name
                                                 masto-card-author-url
                                                 masto-card-provider-name
                                                 masto-card-provider-url
                                                 masto-card-html
                                                 masto-card-width
                                                 masto-card-height
               <mastodon-poll> masto-poll? masto-poll-id
                                           masto-poll-expires-at
                                           masto-poll-expired
                                           masto-poll-multiple
                                           masto-poll-votes-count
                                           masto-poll-options
                                           masto-poll-voted
               <mastodon-application> masto-application? masto-application-name
                                                         masto-application-website
               <mastodon-status> masto-status? masto-status-id
                                               masto-status-uri
                                               masto-status-url
                                               masto-status-account
                                               masto-status-in-reply-to-id
                                               masto-status-in-reply-to-account-id
                                               masto-status-reblog-status
                                               masto-status-content
                                               masto-status-created-at
                                               masto-status-emojis
                                               masto-status-replies-count
                                               masto-status-reblogs-count
                                               masto-status-favorites-count
                                               masto-status-reblogged
                                               masto-status-favorited
                                               masto-status-muted
                                               masto-status-sensitive
                                               masto-status-spoiler-text
                                               masto-status-visibility
                                               masto-status-media-attachments
                                               masto-status-mentions
                                               masto-status-tags
                                               masto-status-card
                                               masto-status-poll
                                               masto-status-application
                                               masto-status-language
                                               masto-status-pinned))

(define* (masto-mutes-all mastoApp #:optional [limit 40])
  "Retrieve all mutes associated with the user tied to `mastoApp`.

If no `limit` value is provided, the value 40 is used.

A <mastodon-pagination-object> is returned, consisting of the
<mastodon-account>s that the user has muted.

Find the original documentation [here](https://docs.joinmastodon.org/methods/accounts/mutes/)."
  (generate-masto-page
    mastoApp
    'get
    (string-append (masto-app-domain mastoApp) "/api/v1/mutes"
                   "?limit="                   (number->string limit))
    generate-masto-account-array))

(define* (masto-mute-account mastoApp accountID #:optional [notifications #t])
  "Mute an existing Fediverse account for the user tied to `mastoApp`.

`accountID` refers to the ID of the user you wish to mute.

`notifications` determines if notifications, in addition to statuses, ought to
be muted.

A <mastodon-relationship> is returned.

Find the original documentation within [this page](https://docs.joinmastodon.org/methods/accounts/)."
  (generate-masto-relationship
    (http 'post
      (string-append (masto-app-domain mastoApp) "/api/v1/accounts/"
                     accountID                   "/mute")
      #:token       (masto-app-token mastoApp)
      #:queryParams `(("notifications" ,(boolean->string notifications))))))

(define* (masto-unmute-account mastoApp accountID)
  "Unmute an existing Fediverse account for the user tied to `mastoApp`.

`accountID` refers to the ID of the user you wish to unmute.

A <mastodon-relationship> is returned.

Find the original documentation within [this page](https://docs.joinmastodon.org/methods/accounts/)."
  (generate-masto-relationship
    (http 'post
      (string-append (masto-app-domain mastoApp) "/api/v1/accounts/"
                     accountID                   "/unmute")
      #:token       (masto-app-token mastoApp))))

(define (masto-mute-status mastoApp statusID)
  "Mute an existing Fediverse status for the user tied to `mastoApp`.

`statusID` refers to the ID of the status you wish to mute.

A <mastodon-status> is returned.

Find the original documentation within [this page](https://docs.joinmastodon.org/methods/statuses/)."
  (generate-masto-status
    (http 'post
      (string-append (masto-app-domain mastoApp) "/api/v1/statuses/"
                     statusID                    "/mute")
      #:token (masto-app-token mastoApp))))

(define (masto-unmute-status mastoApp statusID)
  "Unmute an existing Fediverse status for the user tied to `mastoApp`.

`statusID` refers to the ID of the status you wish to unmute.

A <mastodon-status> is returned.

Find the original documentation within [this page](https://docs.joinmastodon.org/methods/statuses/)."
  (generate-masto-status
    (http 'post
      (string-append (masto-app-domain mastoApp) "/api/v1/statuses/"
                     statusID                    "/unmute")
      #:token (masto-app-token mastoApp))))
