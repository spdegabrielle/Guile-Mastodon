(define-module (elefan timelines)
  #:use-module (elefan auth)
  #:use-module (elefan entities)
  #:use-module (elefan utils)
  #:export (masto-timelines-home
            masto-conversations-all
            masto-conversation-read
            masto-conversation-delete
            masto-timelines-public
            masto-timelines-tag
            masto-timelines-list)
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
                                                 masto-account-created-at
                                                 masto-account-followers-count
                                                 masto-account-following-count
                                                 masto-account-statuses-count
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
               <mastodon-conversation> masto-convo? masto-convo-id
                                                    masto-convo-accounts
                                                    masto-convo-last-status
                                                    masto-convo-unread?))

(define* (masto-timelines-home mastoApp #:key maxID sinceID
                                              minID [limit 20] local)
  "Retrieve the home timeline associated with the user tied to `mastoApp`.

If no `limit` value is provided, the value 20 is used.

If no `local` value is provided, the value `#f` is used.

A list of <mastodon-status>s are returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/timelines/)."
  (generate-masto-status-array
    (http 'get
      (string-append (masto-app-domain mastoApp) "/api/v1/timelines/home")
      #:token       (masto-app-token mastoApp)
      #:queryParams `((  "max_id" ,maxID)
                      ("since_id" ,sinceID)
                      (  "min_id" ,minID)
                      ("limit"    ,( number->string limit))
                      ("local"    ,(boolean->string local))))))

(define* (masto-conversations-all mastoApp #:key maxID sinceID minID [limit 20])
  "Retrieve all conversations associated with the user tied to `mastoApp`.

If no `limit` value is provided, the value 20 is used; the max. is 40,
regardless of the value provided.

A list of <mastodon-status>s are returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/timelines/conversations/)."
  (generate-masto-page
    mastoApp
    'get
    (string-append (masto-app-domain mastoApp) "/api/v1/conversations"
                   (assemble-params `((  "max_id" ,maxID)
                                      ("since_id" ,sinceID)
                                      (  "min_id" ,minID)
                                      ("limit"    ,(number->string (if (> limit 40)
                                                                       40
                                                                     limit))))))
    generate-masto-convo-array))

(define (masto-conversation-read mastoApp conversationID)
  "Mark the conversation as read, for the user tied to `mastoApp`, which has the
ID `conversationID`.

A <mastodon-conversation> is returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/timelines/conversations/)."
  (generate-masto-convo
    (http 'post
      (string-append (masto-app-domain mastoApp) "/api/v1/conversations/"
                     conversationID              "/read")
      #:token (masto-app-token mastoApp))))

(define (masto-conversation-delete mastoApp conversationID)
  "Delete the conversation for the user tied to `mastoApp` which has the ID
`conversationID`.

This function, if successful, returns `#t`.

Find the original documentation [here](https://docs.joinmastodon.org/methods/timelines/conversations/)."
  (http 'delete (string-append
                  (masto-app-domain mastoApp)
                  "/api/v1/conversations/"
                  conversationID)              #:token (masto-app-token mastoApp))

  #t)

(define* (masto-timelines-public domainOrApp #:key local     remote
                                                   onlyMedia maxID
                                                   sinceID   minID  [limit 20])
  "Retrieve the public timeline associated with instance.

`domainOrApp` can be the instance domain as a String or a
<mastodon-instance-application>, whose associated `domain` will be used instead.

If no `local` value is provided, the value `#f` is used.

If no `remote` value is provided, the value `#f` is used.

If no `onlyMedia` value is provided, the value `#f` is used.

If no `limit` value is provided, the value 20 is used.

A list of <mastodon-status>s are returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/timelines/)."
  (generate-masto-page
    #f
    'get
    (string-append
      (if (masto-instance-app? domainOrApp)
          (masto-app-domain domainOrApp)
        (if (string-contains-ci domainOrApp "https://")
            domainOrApp
          (string-append/shared "https://" domainOrApp)))
      "/api/v1/timelines/public"
      (assemble-params `(("local"      ,(boolean->string local))
                         ("remote"     ,(boolean->string remote))
                         ("only_media" ,(boolean->string onlyMedia))
                         (  "max_id"   ,maxID)
                         ("since_id"   ,sinceID)
                         (  "min_id"   ,minID)
                         ("limit"      ,(number->string limit)))))
    generate-masto-status-array))

(define* (masto-timelines-tag domainOrApp hashtag #:key local onlyMedia
                                                        maxID sinceID
                                                        minID [limit 20])
  "Retrieve public statuses containing the given hashtag.

`domainOrApp` can be the instance domain as a String or a
<mastodon-instance-application>, whose associated `domain` will be used instead.

If no `local` value is provided, the value `#f` is used.

If no `remote` value is provided, the value `#f` is used.

If no `onlyMedia` value is provided, the value `#f` is used.

If no `limit` value is provided, the value 20 is used.

A list of <mastodon-status>s are returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/timelines/)."
  (generate-masto-page
    #f
    'get
    (string-append
      (if (masto-instance-app? domainOrApp)
          (masto-app-domain domainOrApp)
        (if (string-contains-ci domainOrApp "https://")
            domainOrApp
          (string-append/shared "https://" domainOrApp)))
      "/api/v1/timelines/tag/" hashtag
      (assemble-params `(("local"      ,(boolean->string local))
                         ("only_media" ,(boolean->string onlyMedia))
                         (  "max_id"   ,maxID)
                         ("since_id"   ,sinceID)
                         (  "min_id"   ,minID)
                         ("limit"      ,(number->string limit)))))
    generate-masto-status-array))

(define* (masto-timelines-list mastoApp listID #:key maxID sinceID
                                                     minID [limit 20])
  "Retrieve the statuses in the given list that has the ID `listID`.

If no `limit` value is provided, the value 20 is used.

A list of <mastodon-status>s are returned.

Find the original documentation [here](https://docs.joinmastodon.org/methods/timelines/)."
  (generate-masto-page
    mastoApp
    'get
    (string-append (masto-app-domain mastoApp) "/api/v1/timelines/list/" listID
                   (assemble-params `((  "max_id" ,maxID)
                                      ("since_id" ,sinceID)
                                      (  "min_id" ,minID)
                                      ("limit"    ,(number->string limit)))))
    generate-masto-status-array))
