# lists Module


<br />

## masto-field-name
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-account-header
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-account-url
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-field-verified-at
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-emoji-shortcode
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## <mastodon-account>
#### Summary
A record object that can be returned by an API call.
#### Record Fields
> `id` <br />
> `username` <br />
> `acct` <br />
> `displayName` <br />
> `locked` <br />
> `createdAt` <br />
> `followersCount` <br />
> `followingCount` <br />
> `statusesCount` <br />
> `note` <br />
> `url` <br />
> `avatar` <br />
> `avatarStatic` <br />
> `header` <br />
> `headerStatic` <br />
> `emojis` <br />
> `moved` <br />
> `fields` <br />
> `bot` <br />

<br />

## masto-lists-all
#### Summary
#f
#### Parameters
> `mastoApp` _required_ <br />

<br />

## masto-account-display-name
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-account-avatar
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-account-acct
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-page-next
#### Summary
#f
#### Parameters
> `mastoApp` _required_ <br />
> `page` _required_ <br />

<br />

## masto-account-bot
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-account-moved
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-account-statuses-count
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-emoji-visible-in-picker
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-list-id
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-emoji?
#### Summary
#f
#### Parameters
> `obj` _required_ <br />

<br />

## masto-list-update
#### Summary
#f
#### Parameters
> `mastoApp` _required_ <br />
> `listID` _required_ <br />
> `title` _required_ <br />

<br />

## masto-account?
#### Summary
#f
#### Parameters
> `obj` _required_ <br />

<br />

## masto-account-note
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-list-add-account
#### Summary
#f
#### Parameters
> `mastoApp` _required_ <br />
> `listID` _required_ <br />
> `accountIDs` _required_ <br />

<br />

## masto-account-locked
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-list-create
#### Summary
#f
#### Parameters
> `mastoApp` _required_ <br />
> `title` _required_ <br />

<br />

## masto-account-followers-count
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## <mastodon-pagination-object>
#### Summary
A record object that can be returned by an API call.
#### Record Fields
> `objectCollection` <br />
> `prevURL` <br />
> `prevPage` <br />
> `nextURL` <br />
> `nextPage` <br />
> `http-call` <br />
> `generate-fn` <br />

<br />

## masto-list-delete-account
#### Summary
#f
#### Parameters
> `mastoApp` _required_ <br />
> `listID` _required_ <br />
> `accountIDs` _required_ <br />

<br />

## masto-account-avatar-static
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-account-following-count
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-emoji-url
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## <mastodon-list>
#### Summary
A record object that can be returned by an API call.
#### Record Fields
> `id` <br />
> `title` <br />

<br />

## masto-account-fields
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-emoji-static-url
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-page-objects
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-list-delete
#### Summary
#f
#### Parameters
> `mastoApp` _required_ <br />
> `listID` _required_ <br />

<br />

## masto-list-get
#### Summary
#f
#### Parameters
> `mastoApp` _required_ <br />
> `listID` _required_ <br />

<br />

## masto-page-prev
#### Summary
#f
#### Parameters
> `mastoApp` _required_ <br />
> `page` _required_ <br />

<br />

## masto-field-value
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-account-username
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-lists-by-account
#### Summary
#f
#### Parameters
> `mastoApp` _required_ <br />
> `accountID` _required_ <br />

<br />

## masto-field?
#### Summary
#f
#### Parameters
> `obj` _required_ <br />

<br />

## masto-account-emojis
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-list?
#### Summary
#f
#### Parameters
> `obj` _required_ <br />

<br />

## masto-account-id
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-list-title
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-accounts-by-list
#### Summary
#f
#### Parameters
> `mastoApp` _required_ <br />
> `listID` _required_ <br />
> `limit` _required_ <br />

<br />

## <mastodon-emoji>
#### Summary
A record object that can be returned by an API call.
#### Record Fields
> `shortcode` <br />
> `staticURL` <br />
> `url` <br />
> `visibleInPicker` <br />

<br />

## <mastodon-field>
#### Summary
A record object that can be returned by an API call.
#### Record Fields
> `name` <br />
> `value` <br />
> `verifiedAt` <br />

<br />

## masto-account-header-static
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-account-created-at
#### Summary
#f
#### Parameters
> `s` _required_ <br />

<br />

## masto-page?
#### Summary
#f
#### Parameters
> `obj` _required_ <br />

<br />
