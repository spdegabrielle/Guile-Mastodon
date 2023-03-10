(define-module (elefan statuses)
  #:use-module (elefan auth)
  #:use-module (elefan entities)
  #:use-module (elefan enums)
  #:use-module (elefan utils)
  #:use-module (srfi srfi-19)
  #:export (masto-status-get              masto-status-create
            masto-status-get-context      masto-status-delete
            masto-status-get-reblogged-by masto-status-reblog
            masto-status-get-favorited-by masto-status-unreblog
                                          masto-status-bookmark
                                          masto-status-unbookmark
                                          masto-status-pin
                                          masto-status-unpin)
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
                                               masto-status-pinned
               <mastodon-context> masto-context? masto-context-ancestors
                                                 masto-context-descendants
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
               <mastodon-scheduled-status-params> masto-scheduled-status-params? masto-scheduled-status-params-text
                                                                                 masto-scheduled-status-params-in-reply-to-id
                                                                                 masto-scheduled-status-params-media-ids
                                                                                 masto-scheduled-status-params-sensitive
                                                                                 masto-scheduled-status-params-spoiler-text
                                                                                 masto-scheduled-status-params-visibility
                                                                                 masto-scheduled-status-params-scheduled-at
                                                                                 masto-scheduled-status-params-application-id
               <mastodon-scheduled-status> masto-scheduled-status? masto-scheduled-status-id
                                                                   masto-scheduled-status-scheduled-at
                                                                   masto-scheduled-status-params
                                                                   masto-scheduled-status-media-attachments))

(define (masto-status-get domainOrApp statusID)
  "View an existing Fediverse status with the ID `statusID`.

`domainOrApp` can be the instance domain as a String or a
<mastodon-instance-application>, whose associated `domain` will be used instead.

If the status in question is private, you will need to use a
<mastodon-instance-application> for `domainOrApp` in order to determine if the
user has permission to view the status.

A <mastodon-status> is returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/)."
  (generate-masto-status
    (http 'get (string-append
                 (if (masto-instance-app? domainOrApp)
                     (masto-app-domain domainOrApp)
                   (if (string-contains-ci domainOrApp "https://")
                       domainOrApp
                     (string-append/shared "https://" domainOrApp)))
                 "/api/v1/statuses/"
                 statusID))))

(define (masto-status-get-context domainOrApp statusID)
  "View the statuses above and below the status with the ID `statusID`.

`domainOrApp` can be the instance domain as a String or a
<mastodon-instance-application>, whose associated `domain` will be used instead.

If the status in question is private, you will need to use a
<mastodon-instance-application> for `domainOrApp` in order to determine if the
user has permission to view the status.

A <mastodon-context> is returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/)."
  (generate-masto-context
    (http 'get (string-append
                 (if (masto-instance-app? domainOrApp)
                     (masto-app-domain domainOrApp)
                   (if (string-contains-ci domainOrApp "https://")
                       domainOrApp
                     (string-append/shared "https://" domainOrApp)))
                 "/api/v1/statuses/"
                 statusID
                 "/context"))))

(define (masto-status-get-reblogged-by domainOrApp statusID)
  "View who boosted the status that has the ID `statusID`.

`domainOrApp` can be the instance domain as a String or a
<mastodon-instance-application>, whose associated `domain` will be used instead.

If the status in question is private, you will need to use a
<mastodon-instance-application> for `domainOrApp` in order to determine if the
user has permission to view the status.

A list of <mastodon-account>s is returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/)."
  (generate-masto-account-array
    (http 'get
      (string-append
        (if (masto-instance-app? domainOrApp)
            (masto-app-domain domainOrApp)
          (if (string-contains-ci domainOrApp "https://")
              domainOrApp
            (string-append/shared "https://" domainOrApp))) "/api/v1/statuses/"
        statusID                                            "/reblogged_by"))))

(define (masto-status-get-favorited-by domainOrApp statusID)
  "View who favorited the status that has the ID `statusID`.

`domainOrApp` can be the instance domain as a String or a
<mastodon-instance-application>, whose associated `domain` will be used instead.

If the status in question is private, you will need to use a
<mastodon-instance-application> for `domainOrApp` in order to determine if the
user has permission to view the status.

A list of <mastodon-account>s is returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/)."
  (generate-masto-account-array
    (http 'get
      (string-append
        (if (masto-instance-app? domainOrApp)
            (masto-app-domain domainOrApp)
          (if (string-contains-ci domainOrApp "https://")
              domainOrApp
            (string-append/shared "https://" domainOrApp))) "/api/v1/statuses/"
        statusID                                            "/favourited_by"))))

(define* (masto-status-create mastoApp #:key statusObject statusText
                                             inReplyToID  mediaIDs
                                             sensitive    spoilerText
                                             visibility   scheduledAt
                                             language     poll
                                             pollOptions  pollExpiresIn
                                             pollMultiple pollHideTotals idempotencyKey)
  "Post a new status for the user tied to `mastoApp`.

For the status, a <mastodon-status> can be provided for `#:statusObject`;
otherwise, `#:statusText`, `#:inReplyToID`, `#:mediaIDs`, `#:sensitive`,
`#:spoilerText`, and `#:visibility` must be provided, instead. If
`#:statusObject` is provided, the other parameters just listed will be ignored.

`#:scheduledAt` can be a SRFI-19
[date](https://www.gnu.org/software/guile/manual/html_node/SRFI_002d19-Date.html)
object or a ISO 8601 Datetime string; if using a SRFI-19 date, the appropriately
formatted string will be generated, for you.

<mastodon-poll> can be provided for `#:poll`; otherwise, `#:pollOptions`,
`#:pollExpiresIn`, `#:pollMultiple`, and `#:pollHideTotals` must be provided,
instead. If `#:poll` is provided, the other parameters just listed will be
ignored.

`#:idempotencyKey` is used to prevent duplicate submissions of the same status.
Idempotency keys are stored for up to 1 hour and can be any arbitrary string.
Consider using a hash or UUID generated client-side.

A <mastodon-status> is returned; if `#:scheduledAt` is provided, a
<mastodon-scheduled-status> is returned, instead.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/)."
  (let ([s `(("status"            ,(if statusObject
                                       (masto-status-content        statusObject)
                                     statusText))
             ("in_reply_to_id"    ,(if statusObject
                                       (masto-status-in-reply-to-id statusObject)
                                     inReplyToID))
             ("media_ids"         ,(if statusObject
                                       (map
                                         masto-attachment-id
                                         (masto-status-media-attachments statusObject))
                                     mediaIDs))
             ("sensitive"         ,(boolean->string
                                     (if statusObject
                                         (masto-status-sensitive  statusObject)
                                       sensitive)))
             ("spoiler_text"      ,(if statusObject
                                       (masto-status-spoiler-text statusObject)
                                     spoilerText))
             ("visibility"        ,(let ([v (if statusObject
                                                (masto-status-visibility statusObject)
                                              visibility)])
                                     (cond
                                      [(and v (enum-member? v STATUS_VISIBILITY_ENUM))
                                            (enum-member-or-value->string v)]
                                      [(not v)
                                            v]
                                      [else (error (string-append
                                                     "ERROR: In procedure masto-status-create:\n"
                                                     "In procedure masto-status-create: "
                                                     "Non-valid status visibility enum provided"))])))
             ("scheduled_at"      ,(if (string? scheduledAt)
                                       scheduledAt
                                     (date->string
                                       scheduledAt
                                       "~Y-~m-~dT~H:~M:~S.~N~z")))
             ("language"          ,language)
             ("poll[options]"     ,(if poll
                                       (map
                                         masto-poll-option-title
                                         (masto-poll-options poll))
                                     pollOptions))
             ("poll[expires_in]"  ,(if-let ([ei not (if poll
                                                        (masto-poll-expires-at poll)
                                                      pollExpiresIn)])
                                       ei
                                     (number->string
                                       (cond
                                        [(date? ei)
                                              (time-second
                                                (time-difference
                                                  (date->time-utc ei)
                                                  (date->time-utc (current-date
                                                                    (date-zone-offset ei)))))]
                                        [(time? ei)
                                              (time-second ei)]
                                        [(number? ei)
                                              ei]
                                        [else (error (string-append
                                                       "ERROR: In procedure masto-status-create:\n"
                                                       "In procedure masto-status-create: "
                                                       "pollExpiresIn must be srfi-19 date or time "
                                                       "or number of seconds"))]))))
             ("poll[multiple]"    ,(boolean->string
                                     (if poll
                                         (masto-poll-multiple poll)
                                       pollMultiple)))
             ("poll[hide_totals]" ,(boolean->string pollHideTotals)))])
    (cond
     [(not (or (car (assoc-ref s "status")) (car (assoc-ref s "media_ids"))))
           (error (string-append
                    "ERROR: In procedure masto-status-create:\n"
                    "In procedure masto-status-create: "
                    "Empty statuses not permitted; provide status text or "
                    "media IDs"))]
     [(let ([o (car (assoc-ref s "poll[options]"))]
            [e (car (assoc-ref s "poll[expires_in]"))])
        (and (or o e) (not (and o e))))
           (error (string-append
                    "ERROR: In procedure masto-status-create:\n"
                    "In procedure masto-status-create: "
                    "Polls require both poll options and seconds to expire by"))]
     [(and
        (car (assoc-ref s "poll[options]"))
        (car (assoc-ref s "poll[expires_in]"))
        (not statusText))
           (error (string-append
                    "ERROR: In procedure masto-status-create:\n"
                    "In procedure masto-status-create: "
                    "Polls require status text"))]
     [(and
        (car (assoc-ref s "poll[options]"))
        (car (assoc-ref s "poll[expires_in]"))
        mediaIDs)
           (error (string-append
                    "ERROR: In procedure masto-status-create:\n"
                    "In procedure masto-status-create: "
                    "Status poll cannot be combined with media attachments"))]
     [else ((if (car (assoc-ref s "scheduled_at"))
                generate-masto-scheduled-status
              generate-masto-status)
             (http 'post
               (string-append (masto-app-domain mastoApp) "/api/v1/statuses")
               #:token          (masto-app-token mastoApp)
               #:queryParams    s
               #:idempotencyKey (if idempotencyKey idempotencyKey #f)))])))

(define (masto-status-delete mastoApp statusID)
  "Delete the status for the user tied to `mastoApp` which has the ID
`statusID`.

This function, if successful, returns `#t`.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/)."
  (http 'delete
    (string-append (masto-app-domain mastoApp) "/api/v1/statuses/" statusID)
    #:token (masto-app-token mastoApp))

  #t)

(define (masto-status-reblog mastoApp statusID)
  "Reblog the status, for the user tied to `mastoApp`, which has the ID
`statusID`.

A <mastodon-status> is returned with the ID of the boosted status being
retrievable via the masto-status-reblog-status function.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/)."
  (generate-masto-status
    (http 'post
      (string-append (masto-app-domain mastoApp) "/api/v1/statuses/"
                     statusID                    "/reblog")
      #:token (masto-app-token mastoApp))))

(define (masto-status-unreblog mastoApp statusID)
  "Unreblog the status, for the user tied to `mastoApp`, which has the ID
`statusID`.

A <mastodon-status> is returned of the status which was unreblogged.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/)."
  (generate-masto-status
    (http 'post
      (string-append (masto-app-domain mastoApp) "/api/v1/statuses/"
                     statusID                    "/unreblog")
      #:token (masto-app-token mastoApp))))

(define (masto-status-bookmark mastoApp statusID)
  "Bookmark the status, for the user tied to `mastoApp`, which has the ID
`statusID`.

A <mastodon-status> is returned of the status which was bookmarked.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/)."
  (generate-masto-status
    (http 'post
      (string-append (masto-app-domain mastoApp) "/api/v1/statuses/"
                     statusID                    "/bookmark")
      #:token (masto-app-token mastoApp))))

(define (masto-status-unbookmark mastoApp statusID)
  "Unbookmark the status, for the user tied to `mastoApp`, which has the ID
`statusID`.

A <mastodon-status> is returned of the status which was unbookmarked.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/)."
  (generate-masto-status
    (http 'post
      (string-append (masto-app-domain mastoApp) "/api/v1/statuses/"
                     statusID                    "/unbookmark")
      #:token (masto-app-token mastoApp))))

(define (masto-status-pin mastoApp statusID)
  "Pin the status, for the user tied to `mastoApp`, which has the ID `statusID`.

A <mastodon-status> is returned of the status which was pinned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/)."
  (generate-masto-status
    (http 'post
      (string-append (masto-app-domain mastoApp) "/api/v1/statuses/"
                     statusID                    "/pin")
      #:token (masto-app-token mastoApp))))

(define (masto-status-unpin mastoApp statusID)
  "Unpin the status, for the user tied to `mastoApp`, which has the ID `statusID`.

A <mastodon-status> is returned of the status which was unpinned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/statuses/)."
  (generate-masto-status
    (http 'post
      (string-append (masto-app-domain mastoApp) "/api/v1/statuses/"
                     statusID                    "/unpin")
      #:token (masto-app-token mastoApp))))
