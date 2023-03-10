(define-module (elefan emojis)
  #:use-module (elefan auth)
  #:use-module (elefan entities)
  #:use-module (elefan utils)
  #:export     (masto-emojis-on-instance)
  #:re-export  (<mastodon-emoji> masto-emoji? masto-emoji-shortcode
                                              masto-emoji-static-url
                                              masto-emoji-url
                                              masto-emoji-visible-in-picker?))

(define (masto-emojis-on-instance domainOrApp)
  "Retrieve all emojis belonging to a particular instance.

`domainOrApp` can be the instance domain as a String or a
<mastodon-instance-application>,
whose associated `domain` will be used instead.

Domains can include or lack the preceding \"https://\"; this function will add
one, if needed.

This function will return a list of <mastodon-emoji>s.

Documentation for this API call can be found [here](https://docs.joinmastodon.org/methods/instance/custom_emojis/)."
  (generate-masto-emoji-array
    (http 'get (string-append
                 (if (masto-instance-app? domainOrApp)
                     (masto-app-domain domainOrApp)
                   (if (string-contains-ci domainOrApp "https://")
                       domainOrApp
                     (string-append/shared "https://" domainOrApp)))
                 "/api/v1/custom_emojis"))))
